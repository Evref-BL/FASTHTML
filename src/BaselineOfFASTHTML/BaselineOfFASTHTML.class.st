Class {
	#name : 'BaselineOfFASTHTML',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfFASTHTML',
	#package : 'BaselineOfFASTHTML'
}

{ #category : 'baselines' }
BaselineOfFASTHTML >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec description:
			'Developement version of FAST HTML using TreeSitter for Pharo'.
		spec author: 'AlessHosry'.
		self defineDependencies: spec.
		self definePackages: spec.
		self defineGroups: spec ]
]

{ #category : 'accessing' }
BaselineOfFASTHTML >> customProjectAttributes [

	^ PackageOrganizer default packages
		  detect: [ :package | package name = 'BaselineOfFamix' ]
		  ifFound: [ #(  ) ]
		  ifNone: [ #( #NeedsMoose ) ]
]

{ #category : 'baselines' }
BaselineOfFASTHTML >> defineDependencies: spec [

	spec baseline: 'FAST' with: [
		spec
			loads: #( 'default' );
			repository: 'github://moosetechnology/FAST:v3/src' ].
	
	spec baseline: 'TreeSitter' with: [
		spec
			loads: #( 'default' );
			repository: 'github://Evref-BL/Pharo-Tree-Sitter/src' ].
	
	spec
		project: 'FASTTool'
		copyFrom: 'FAST'
		with: [ spec loads: #( 'core' 'tools' ) ]. 
]

{ #category : 'baselines' }
BaselineOfFASTHTML >> defineGroups: spec [

	spec
		group: 'core'
		with: #( 'FAST-HTML-Model' 
			   'FAST-HTML-Model-Generator' );
		group: 'tools' with: #( 'core' 'FAST-HTML-Tools' )
]

{ #category : 'baselines' }
BaselineOfFASTHTML >> definePackages: spec [

	spec
		package: 'FAST-HTML-Model'
		with: [ spec requires: #( 'FAST' ) ];
		package: 'FAST-HTML-Model-Generator'; 
		package: 'FAST-HTML-Tools'
		with: [ spec requires: #( 'TreeSitter' ) ].

	"In case of no Famix loaded"
	spec for: #NeedsMoose do: [
		spec
			package: 'FAST-HTML-Model'
			with: [ spec requires: #( 'FAST' 'Famix' ) ] ]
]
