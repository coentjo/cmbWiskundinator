Class {
	#name : #ExpVariable,
	#superclass : #Expression,
	#instVars : [
		'varName'
	],
	#category : #cmbWiskundinator
}

{ #category : #'instance creation' }
ExpVariable class >> genaamd: aVariableName [
	^ self new 
		varName: aVariableName;
		yourself  
]

{ #category : #printing }
ExpVariable >> printOn: aStream [
	aStream nextPutAll: varName 
]

{ #category : #accessing }
ExpVariable >> varName [
	^ varName
]

{ #category : #accessing }
ExpVariable >> varName: anObject [
	varName := anObject
]
