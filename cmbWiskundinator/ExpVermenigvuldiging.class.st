Class {
	#name : #ExpVermenigvuldiging,
	#superclass : #ExpBinaryExpression,
	#category : #cmbWiskundinator
}

{ #category : #compute }
ExpVermenigvuldiging >> expComputed [
	^ exp1 * exp2 
]

{ #category : #accessing }
ExpVermenigvuldiging >> expSymbol [
	^ '*'
]

{ #category : #'as yet unclassified' }
ExpVermenigvuldiging >> xEnEraf: aNumberTimesx [
	^ (self rechterkantExpressie varName 
		= aNumberTimesx rechterkantExpressie varName )
		ifTrue: 
			[ self class van: exp1 - aNumberTimesx linkerkantExpressie met: exp2 ] 
		ifFalse: 
			[ ExpOptelling van: self met: aNumberTimesx ]
	

]
