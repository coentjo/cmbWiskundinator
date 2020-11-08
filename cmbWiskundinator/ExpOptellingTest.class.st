"
An ExpOptellingTest is a test class for testing the behavior of ExpOptelling
"
Class {
	#name : #ExpOptellingTest,
	#superclass : #TestCase,
	#category : #'cmbWiskundinator-Tests'
}

{ #category : #tests }
ExpOptellingTest >> testAddition [
	| exp1 |
	exp1 := ExpOptelling van: 1 met: 2.
	self assert: exp1 expComputed equals: 3 
]
