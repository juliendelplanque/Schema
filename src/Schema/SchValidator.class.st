Class {
	#name : #SchValidator,
	#superclass : #Object,
	#category : #'Schema-Validators'
}

{ #category : #converting }
SchValidator >> asValidator [
	^ self
]

{ #category : #validation }
SchValidator >> checkValidity: anObject [
	"Verify that anObject is valid according to myself.
	 If not, raise a SchSchemaError.
	"
	(self isValid: anObject)
		ifTrue: [ ^ self ].
	
	self signalInvalid: anObject
]

{ #category : #testing }
SchValidator >> isValid: anObject [
	"Returns true if anObject is valid according to myself.
	 Else returns false.
	"
	^ [
		self validate: anObject.
		true
	] on: SchSchemaError do: [ false ]
]

{ #category : #error }
SchValidator >> signalInvalid: anObject [
	SchSchemaError signalForValidator: self invalidObject: anObject
]

{ #category : #error }
SchValidator >> signalInvalid: anObject becauseOfError: error [
	SchSchemaError signalForValidator: self invalidObject: anObject becauseOfError: error
]

{ #category : #error }
SchValidator >> signalUnexpectedType: anObject [
	SchUnexpectedTypeError signalForValidator: self invalidObject: anObject
]

{ #category : #validation }
SchValidator >> validate: anObject [
	"Verify that anObject is valid according to the validation I implement.
	 If anObject is invalid, I raise a SchemaError.
	 Else, I return anObject potentially converted as another object.
	"
	^ self subclassResponsibility
]
