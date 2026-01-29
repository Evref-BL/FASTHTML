"
## Relations
======================

### Parents
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericParent` | `FASTHTMLEntity` | `genericChildren` | `FASTHTMLEntity` | |

### Children
| Relation | Origin | Opposite | Type | Comment |
|---|
| `genericChildren` | `FASTHTMLEntity` | `genericParent` | `FASTHTMLEntity` | |


## Properties
======================

| Name | Type | Default value | Comment |
|---|
| `endPos` | `Number` | nil | |
| `startPos` | `Number` | nil | |

"
Class {
	#name : 'FASTHTMLEntity',
	#superclass : 'MooseEntity',
	#traits : 'FASTTEntity',
	#classTraits : 'FASTTEntity classTrait',
	#instVars : [
		'#genericChildren => FMMany type: #FASTHTMLEntity opposite: #genericParent',
		'#genericParent => FMOne type: #FASTHTMLEntity opposite: #genericChildren'
	],
	#category : 'FAST-HTML-Model-Entities',
	#package : 'FAST-HTML-Model',
	#tag : 'Entities'
}

{ #category : 'meta' }
FASTHTMLEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #'FAST-HTML-Model'>
	<generated>
	<abstract>
	^ self
]

{ #category : 'testing' }
FASTHTMLEntity class >> isAbstract [

	<generated>
	^ self == FASTHTMLEntity
]

{ #category : 'meta' }
FASTHTMLEntity class >> metamodel [

	<generated>
	^ FASTHTMLModel metamodel
]

{ #category : 'adding' }
FASTHTMLEntity >> addGenericChildren: anObject [
	<generated>
	^ self genericChildren add: anObject
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericChildren [
	"Relation named: #genericChildren type: #FASTHTMLEntity opposite: #genericParent"

	<generated>
	<derived>
	^ genericChildren
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericChildren: anObject [

	<generated>
	genericChildren value: anObject
]

{ #category : 'navigation' }
FASTHTMLEntity >> genericChildrenGroup [
	<generated>
	<navigation: 'GenericChildren'>
	^ MooseSpecializedGroup withAll: self genericChildren asSet
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericParent [
	"Relation named: #genericParent type: #FASTHTMLEntity opposite: #genericChildren"

	<generated>
	<container>
	^ genericParent
]

{ #category : 'accessing' }
FASTHTMLEntity >> genericParent: anObject [

	<generated>
	genericParent := anObject
]

{ #category : 'navigation' }
FASTHTMLEntity >> genericParentGroup [
	<generated>
	<navigation: 'GenericParent'>
	^ MooseSpecializedGroup with: self genericParent
]

{ #category : 'testing' }
FASTHTMLEntity >> isQueryable [

	<generated>
	^ false
]
