Class {
	#name : #SchSchemaError,
	#superclass : #Error,
	#instVars : [
		'validator',
		'invalidObject'
	],
	#category : #'Schema-Errors'
}

{ #category : #'instance creation' }
SchSchemaError class >> signalForValidator: validator invalidObject: invalidObject [
	^ self new
		validator: validator;
		invalidObject: invalidObject;
		signal
]

{ #category : #accessing }
SchSchemaError >> invalidObject [
	^ invalidObject
]

{ #category : #accessing }
SchSchemaError >> invalidObject: anObject [
	invalidObject := anObject
]

{ #category : #accessing }
SchSchemaError >> validator [
	^ validator
]

{ #category : #accessing }
SchSchemaError >> validator: anObject [
	validator := anObject
]
