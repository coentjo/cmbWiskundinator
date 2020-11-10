Class {
	#name : #ExpOptelling,
	#superclass : #ExpBinaryExpression,
	#category : #cmbWiskundinator
}

{ #category : #'instance creation' }
ExpOptelling class >> van: expression1 met: expression2 [ 
	^ self new 
		exp1: expression1; 
		exp2: expression2;
		yourself 
]

{ #category : #compute }
ExpOptelling >> exp2Eraf: aNumber [ 
	exp2 := exp2 - aNumber 
]

{ #category : #compute }
ExpOptelling >> expComputed [
	^ exp1  + exp2 
]

{ #category : #accessing }
ExpOptelling >> expSymbol [
	^ '+'
]

{ #category : #accessing }
ExpOptelling >> expressieMetX [
	^ exp1 
]
