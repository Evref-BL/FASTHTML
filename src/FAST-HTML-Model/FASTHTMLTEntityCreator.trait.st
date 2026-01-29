"
This trait is used by Famix models.
It provides an API for creating entities and adding them to the model.


"
Trait {
	#name : 'FASTHTMLTEntityCreator',
	#category : 'FAST-HTML-Model-Model',
	#package : 'FAST-HTML-Model',
	#tag : 'Model'
}

{ #category : 'meta' }
FASTHTMLTEntityCreator classSide >> annotation [

	<FMClass: #TEntityCreator super: #Object>
	<package: #'FAST-HTML-Model'>
	<generated>
	^ self
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttribute [

	<generated>
	^ self add: FASTHTMLAttribute new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttributeName [

	<generated>
	^ self add: FASTHTMLAttributeName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newAttributeValue [

	<generated>
	^ self add: FASTHTMLAttributeValue new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newComment [

	<generated>
	^ self add: FASTHTMLComment new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newDoctype [

	<generated>
	^ self add: FASTHTMLDoctype new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newDocument [

	<generated>
	^ self add: FASTHTMLDocument new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newERROR [

	<generated>
	^ self add: FASTHTMLERROR new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newElement [

	<generated>
	^ self add: FASTHTMLElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newEndTag [

	<generated>
	^ self add: FASTHTMLEndTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newErroneousEndTag [

	<generated>
	^ self add: FASTHTMLErroneousEndTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newErroneousEndTagName [

	<generated>
	^ self add: FASTHTMLErroneousEndTagName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newQuotedAttributeValue [

	<generated>
	^ self add: FASTHTMLQuotedAttributeValue new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newRawText [

	<generated>
	^ self add: FASTHTMLRawText new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newScriptElement [

	<generated>
	^ self add: FASTHTMLScriptElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newSelfClosingTag [

	<generated>
	^ self add: FASTHTMLSelfClosingTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newStartTag [

	<generated>
	^ self add: FASTHTMLStartTag new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newStyleElement [

	<generated>
	^ self add: FASTHTMLStyleElement new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newTagName [

	<generated>
	^ self add: FASTHTMLTagName new
]

{ #category : 'entity creation' }
FASTHTMLTEntityCreator >> newText [

	<generated>
	^ self add: FASTHTMLText new
]
