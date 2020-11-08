Class {
	#name : #EersteGraadsVergelijking,
	#superclass : #ExpBinaryExpression,
	#category : #cmbWiskundinator
}

{ #category : #accessing }
EersteGraadsVergelijking >> expSymbol [
	^ '='
]

{ #category : #'as yet unclassified' }
EersteGraadsVergelijking >> uitwerking [
	| s1 getalEraf hoeveelXenEraf s2 deler s3 |
	getalEraf := exp1 rechterkantExpressie.
	hoeveelXenEraf := exp2 expressieMetX.
	s1 := exp1 asString , ' = ' , exp2 asString , Character cr asString
		, 'Beide kanten eraf: ' , getalEraf asString , ' en eraf: '
		, hoeveelXenEraf asString , Character cr asString.
	exp1 := exp1 linkerkantExpressie.
	exp2 := exp2 rechterkantExpressie.
	exp2 := exp2 exp2Eraf: getalEraf.
	exp1 := exp1 xEnEraf: hoeveelXenEraf.
	s2 := exp1 asString , ' = ' , exp2 asString , Character cr asString.
	deler := exp1 linkerkantExpressie.
	exp1 := exp1 rechterkantExpressie .
	exp2 := ExpDivide van: exp2  met: deler .
	s3 := 'Beide zijden delen door ' , deler asString , ' geeft:'
		, Character cr asString, 
		self asString .
	^ s1 , s2 , s3 
]
