Class {
	#name : 'FASTHTMLModel',
	#superclass : 'MooseModel',
	#traits : 'FASTHTMLTEntityCreator + FASTTEntityCreator',
	#classTraits : 'FASTHTMLTEntityCreator classTrait + FASTTEntityCreator classTrait',
	#category : 'FAST-HTML-Model-Model',
	#package : 'FAST-HTML-Model',
	#tag : 'Model'
}

{ #category : 'accessing' }
FASTHTMLModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : 'meta' }
FASTHTMLModel class >> annotation [
	<FMClass: #FASTHTMLModel super: #MooseModel>
	<package: #'FAST-HTML-Model'>
	<generated>
]
