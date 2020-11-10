"
A SnijpuntTest is a test class for testing the behavior of Snijpunt
"
Class {
	#name : #SnijpuntTest,
	#superclass : #TestCase,
	#category : #'cmbWiskundinator-Tests'
}

{ #category : #tests }
SnijpuntTest >> testSnijpuntVan2Lijnen [

	| l m snijpunt | 

	Transcript clear.
	l := LijnVergelijking genaamd: 'l' a: 2 / 3 b: 3.
	m := LijnVergelijking genaamd: 'm' a: -3 b: 6 / 7.
	snijpunt := Snijpunt tussen: l en: m.
	snijpunt uitwerking
]
