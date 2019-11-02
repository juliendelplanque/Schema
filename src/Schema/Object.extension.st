Extension { #name : #Object }

{ #category : #'*Schema' }
Object >> asValidator [
	^ SchObjectValidator object: self
]

{ #category : #'*Schema' }
Object >> validate: anObject for: validator [
	"This method should be overriden by subclasses that can act as a validator.
	 By default, #asValidator method creates an object validator that delegates
	 the validation to this method.
	
	 By default, an object consider any object provided for validation as
	 invalid.
	"
	validator signalInvalid: anObject
]
