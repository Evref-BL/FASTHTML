Class {
	#name : 'TreeRepresentation',
	#superclass : 'Object',
	#instVars : [
		'treeSitterTree',
		'fastTree'
	],
	#category : 'FAST-HTML-Tools',
	#package : 'FAST-HTML-Tools'
}

{ #category : 'accessing' }
TreeRepresentation >> fastTree [

	^ fastTree
]

{ #category : 'accessing' }
TreeRepresentation >> fastTree: anObject [

	fastTree := anObject
]

{ #category : 'accessing' }
TreeRepresentation >> treeSitterTree [

	^ treeSitterTree
]

{ #category : 'accessing' }
TreeRepresentation >> treeSitterTree: anObject [

	treeSitterTree := anObject
]
