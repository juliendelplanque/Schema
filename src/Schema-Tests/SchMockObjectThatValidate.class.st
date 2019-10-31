"
I am a mock object implementing #validate:for:.

An object is valid according to myself if it and are the same (identity equals).
"
Class {
	#name : #SchMockObjectThatValidate,
	#superclass : #Object,
	#category : #'Schema-Tests-Validators'
}

{ #category : #validating }
SchMockObjectThatValidate >> validate: anObject for: validator [
	(self == anObject)
		ifFalse: [ validator signalInvalid: anObject ].
	
	^ anObject
]
