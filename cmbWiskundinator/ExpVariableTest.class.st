"
An ExpVariableTest is a test class for testing the behavior of ExpVariable
"
Class {
	#name : #ExpVariableTest,
	#superclass : #TestCase,
	#category : #'cmbWiskundinator-Tests'
}

{ #category : #tests }
ExpVariableTest >> testSimpleVar [
	| v1 v2 v3 |
	v1 := ExpVariable genaamd: 'q' .
	v2 := ExpVariable genaamd: 'r' .
	v3 := ExpVariable genaamd: 'q' .
	self assert: v1 ~= v2 .
	self assert: v1 ~= v3 .
	
]
