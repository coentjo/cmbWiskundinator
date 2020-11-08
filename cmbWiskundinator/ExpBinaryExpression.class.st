Class {
	#name : #ExpBinaryExpression,
	#superclass : #Expression,
	#instVars : [
		'exp1',
		'exp2'
	],
	#classInstVars : [
		'exp1',
		'exp2'
	],
	#category : #cmbWiskundinator
}

{ #category : #'instance creation' }
ExpBinaryExpression class >> van: expression1 met: expression2 [
	^ self new  
		exp1: expression1;
		exp2: expression2 .
]

{ #category : #'instance creation' }
ExpBinaryExpression >> exp1: aNumber [ 
	exp1 := aNumber 
]

{ #category : #'instance creation' }
ExpBinaryExpression >> exp2: anExpVariable [ 
	exp2 := anExpVariable 
]

{ #category : #accessing }
ExpBinaryExpression >> expSymbol [
	^ '/'
]

{ #category : #accessing }
ExpBinaryExpression >> linkerkantExpressie [
	^ exp1
]

{ #category : #printing }
ExpBinaryExpression >> printOn: aStream [ 

	aStream 
		nextPutAll: exp1 asString;
		nextPutAll: ' ';
		nextPutAll: self expSymbol asString ;
		nextPutAll: ' ';
		nextPutAll: exp2 asString
]

{ #category : #'as yet unclassified' }
ExpBinaryExpression >> rechterkantExpressie [
	^ exp2 
]
