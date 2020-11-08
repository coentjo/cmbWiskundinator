Class {
	#name : #LijnVergelijking,
	#superclass : #Object,
	#instVars : [
		'name',
		'a',
		'b'
	],
	#category : #cmbWiskundinator
}

{ #category : #'instance creation' }
LijnVergelijking class >> a: richtingscoefficient b: yCoordinaatVanSnijpuntMetYAs [ 
	^ self new 
		a: richtingscoefficient ;
		b: yCoordinaatVanSnijpuntMetYAs 
]

{ #category : #'instance creation - old' }
LijnVergelijking class >> genaamd: aName a: richtingscoefficient b: yCoordinaatVanSnijpuntMetYAs [ 
	^ self new 
		name: aName;
		a: richtingscoefficient ;
		b: yCoordinaatVanSnijpuntMetYAs 	
]

{ #category : #'nstance creation' }
LijnVergelijking class >> genaamd: aName door: aPoint1 en: aPoint2 [ 
	| rc |
	rc := self rcFrom: aPoint1 and: aPoint2.
	^ self 
		genaamd: aName 
		a: rc 
		b: (self offsetForLineThrough: aPoint1 withRC: rc)
]

{ #category : #compute }
LijnVergelijking class >> offsetForLineThrough: aPoint withRC: rc [ 
	^ aPoint y - (rc * aPoint x)
]

{ #category : #compute }
LijnVergelijking class >> offsetFrom: aPoint and: aPoint2 [ 
	self shouldBeImplemented.
]

{ #category : #compute }
LijnVergelijking class >> rcFrom: aPoint1 and: aPoint2 [ 
	^ (aPoint2 y - aPoint1 y) / (aPoint2 x - aPoint1 x)
]

{ #category : #accessing }
LijnVergelijking >> a [
	^ a
]

{ #category : #accessing }
LijnVergelijking >> a: richtingscoefficient [
	a := richtingscoefficient
]

{ #category : #accessing }
LijnVergelijking >> b [
	^ b
]

{ #category : #accessing }
LijnVergelijking >> b: yCoordinaatVanSnijpuntMetYAs [ 
	b := yCoordinaatVanSnijpuntMetYAs
]

{ #category : #accessing }
LijnVergelijking >> name [
	^ name
]

{ #category : #accessing }
LijnVergelijking >> name: aName [ 
	name := aName 
]

{ #category : #compute }
LijnVergelijking >> offset [
	^ self b
]

{ #category : #printing }
LijnVergelijking >> printOn: aStream [ 

	aStream 
		nextPutAll: 'lijn ' ;
		nextPutAll: self name ;
		nextPutAll: ' : y = ' ;
		nextPutAll: self rechterkant 

]

{ #category : #compute }
LijnVergelijking >> rc [
	^ self a
]

{ #category : #printing }
LijnVergelijking >> rechterkant [
	^ a asString , '.x + ', b asString
]

{ #category : #accessing }
LijnVergelijking >> rechterkantExpressie [
	^ ExpOptelling 
		van: 
			(ExpVermenigvuldiging  
				van: a 
				met: (ExpVariable genaamd: 'x') )
		met: b
]
