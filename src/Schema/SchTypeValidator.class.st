Class {
	#name : #SchTypeValidator,
	#superclass : #SchValidator,
	#instVars : [
		'expectedClass'
	],
	#category : #Schema
}

{ #category : #'instance creation' }
SchTypeValidator class >> expectedClass: expectedClass [
	^ self new
		expectedClass: expectedClass;
		yourself
]

{ #category : #accessing }
SchTypeValidator >> expectedClass [
	^ expectedClass
]

{ #category : #accessing }
SchTypeValidator >> expectedClass: anObject [
	expectedClass := anObject
]

{ #category : #validation }
SchTypeValidator >> validate: anObject [
	(anObject class inheritsFrom: self expectedClass)
		ifFalse: [ self signalInvalid: anObject ].
	^ anObject
]
