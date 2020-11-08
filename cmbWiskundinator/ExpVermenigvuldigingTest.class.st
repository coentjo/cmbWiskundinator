"
An ExpVermenigvuldigingTest is a test class for testing the behavior of ExpVermenigvuldiging
"
Class {
	#name : #ExpVermenigvuldigingTest,
	#superclass : #TestCase,
	#category : #'cmbWiskundinator-Tests'
}

{ #category : #tests }
ExpVermenigvuldigingTest >> testMultiplication [
	| exp1 |
	exp1 := ExpVermenigvuldiging  van: 4 met: 2.
	self assert: exp1 expComputed equals: 8 
]
