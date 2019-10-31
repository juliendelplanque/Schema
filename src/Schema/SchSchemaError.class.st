Class {
	#name : #SchSchemaError,
	#superclass : #Error,
	#instVars : [
		'validator',
		'invalidObject',
		'becauseOfError'
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

{ #category : #'instance creation' }
SchSchemaError class >> signalForValidator: validator invalidObject: invalidObject becauseOfError: becauseOfError [
	^ self new
		validator: validator;
		invalidObject: invalidObject;
		becauseOfError: becauseOfError;
		signal
]

{ #category : #accessing }
SchSchemaError >> becauseOfError [
	^ becauseOfError
]

{ #category : #accessing }
SchSchemaError >> becauseOfError: anObject [
	becauseOfError := anObject
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
