Class {
	#name : #SchConstValidator,
	#superclass : #SchValidator,
	#instVars : [
		'validator'
	],
	#category : #'Schema-Validators'
}

{ #category : #'instance creation' }
SchConstValidator class >> validator: validator [
	^ self new
		validator: validator;
		yourself
]

{ #category : #validation }
SchConstValidator >> validate: anObject [
	self validator validate: anObject.
	^ anObject
]

{ #category : #accessing }
SchConstValidator >> validator [
	^ validator
]

{ #category : #accessing }
SchConstValidator >> validator: anObject [
	validator := anObject
]
