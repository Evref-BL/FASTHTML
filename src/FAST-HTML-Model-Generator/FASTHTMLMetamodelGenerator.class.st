Class {
	#name : 'FASTHTMLMetamodelGenerator',
	#superclass : 'FamixMetamodelGenerator',
	#instVars : [
		'entity',
		'tEntity',
		'_ERROR',
		'attributeValue',
		'text',
		'scriptElement',
		'startTag',
		'selfClosingTag',
		'attributeName',
		'endTag',
		'quotedAttributeValue',
		'erroneousEndTagName',
		'rawText',
		'document',
		'element',
		'styleElement',
		'doctype',
		'attribute',
		'comment',
		'erroneousEndTag',
		'tagName'
	],
	#category : 'FAST-HTML-Model-Generator',
	#package : 'FAST-HTML-Model-Generator'
}

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> packageName [

	^ #'FAST-HTML-Model'
]

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> prefix [

	^ #FASTHTML
]

{ #category : 'accessing' }
FASTHTMLMetamodelGenerator class >> submetamodels [

	^ { FASTMetamodelGenerator }
]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineClasses [

	entity := self newClassNamed: #Entity.

	attributeName := builder ensureClassNamed: #AttributeName.
	attributeValue := builder ensureClassNamed: #AttributeValue.  
	text := builder ensureClassNamed: #Text.
	tagName := builder ensureClassNamed: #TagName. 
	erroneousEndTagName := builder ensureClassNamed: #ErroneousEndTagName.
	rawText := builder ensureClassNamed: #RawText.
	comment := builder ensureClassNamed: #Comment.
	document := builder ensureClassNamed: #Document.
	doctype := builder ensureClassNamed: #Doctype.
	element := builder ensureClassNamed: #Element.
	scriptElement := builder ensureClassNamed: #ScriptElement.
	styleElement := builder ensureClassNamed: #StyleElement.
	startTag := builder ensureClassNamed: #StartTag. 
	selfClosingTag := builder ensureClassNamed: #SelfClosingTag.
	endTag := builder ensureClassNamed: #EndTag.
	erroneousEndTag := builder ensureClassNamed: #ErroneousEndTag.
	attribute := builder ensureClassNamed: #Attribute.
	quotedAttributeValue := builder ensureClassNamed: #QuotedAttributeValue.
	_ERROR := builder ensureClassNamed: #ERROR.

]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineHierarchy [
	"define class hierarchy"

	super defineHierarchy.

	entity --|> tEntity.
	
	document --|> tEntity.
	document --|> #THasImmediateSource.
	document withPrecedenceOf: #THasImmediateSource.
	
	_ERROR --|> #THasImmediateSource.
]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineRelations [

	super defineRelations.
	(entity property: #'genericChildren') <>-* (entity property: #'genericParent').
]

{ #category : 'definition' }
FASTHTMLMetamodelGenerator >> defineTraits [

	super defineTraits.

	"From FAST"
	tEntity := self remoteTrait: #TEntity withPrefix: #FAST.

]
