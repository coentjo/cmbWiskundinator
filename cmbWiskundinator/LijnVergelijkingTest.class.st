"
A LijnVergelijkingTest is a test class for testing the behavior of LijnVergelijking
"
Class {
	#name : #LijnVergelijkingTest,
	#superclass : #TestCase,
	#category : #'cmbWiskundinator-Tests'
}

{ #category : #tests }
LijnVergelijkingTest >> testOffsetForLineThroughWithRC [
	" 	offset (is b) for line: y = 3*x + b    through   4@24
		b = 24 - 3*4  "
	| lv |
	lv := LijnVergelijking genaamd: 'l' door: 4@24 en: 2@18 . 
	self 
		assert:  lv rc
		equals:  3 .
	self 
		assert:  lv offset  
		equals:  12 .
]
