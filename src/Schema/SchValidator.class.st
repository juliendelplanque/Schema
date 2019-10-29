Class {
	#name : #SchValidator,
	#superclass : #Object,
	#category : #Schema
}

{ #category : #error }
SchValidator >> signalInvalid: anObject [
	SchSchemaError signalForValidator: self invalidObject: anObject
]

{ #category : #validation }
SchValidator >> validate: anObject [
	"Verify that anObject is valid according to the validation I implement.
	 If anObject is invalid, I raise a SchemaError.
	 Else, I return anObject potentially converted as another object.
	"
	^ self subclassResponsibility
]
