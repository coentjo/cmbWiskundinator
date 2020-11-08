Class {
	#name : #Snijpunt,
	#superclass : #Object,
	#instVars : [
		'lijn1',
		'lijn2'
	],
	#category : #cmbWiskundinator
}

{ #category : #'instance creation' }
Snijpunt class >> tussen: aLijnVergelijking1 en: aLijnVergelijking2 [ 
	^ self new 
		lijn1: aLijnVergelijking1 
		enLijn2: aLijnVergelijking2 
]

{ #category : #accessing }
Snijpunt >> lijn1: aLijnVergelijking1 enLijn2: aLijnVergelijking2 [ 
	lijn1 := aLijnVergelijking1.
	lijn2 := aLijnVergelijking2  
]

{ #category : #printing }
Snijpunt >> printOn: aStream [ 

	aStream 
		nextPutAll: 'Snijpunt tussen ' ;
		nextPutAll: lijn1 asString ;
		nextPutAll: ' en ' ;
		nextPutAll: lijn2 asString  ;
		nextPutAll: '.'
]

{ #category : #uitwerking }
Snijpunt >> uitwerking [
	Transcript 
		crShow: 'Berekening van ', self asString ; 
		crShow: 'Gelijkstellen van ''x'' en ''y'' geeft de vergelijking:' ;
		crShow: (EersteGraadsVergelijking 
						van: lijn1 rechterkantExpressie
						met: lijn2 rechterkantExpressie) uitwerking ;
		
		crShow: 'Klaar.'
	
	
	
]
