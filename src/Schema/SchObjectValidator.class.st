Class {
	#name : #SchObjectValidator,
	#superclass : #SchValidator,
	#instVars : [
		'object'
	],
	#category : #Schema
}

{ #category : #'instance creation' }
SchObjectValidator class >> object: object [
	^ self new
		object: object;
		yourself
]

{ #category : #accessing }
SchObjectValidator >> object [
	^ object
]

{ #category : #accessing }
SchObjectValidator >> object: anObject [
	object := anObject
]

{ #category : #validation }
SchObjectValidator >> validate: anObject [
	^ self object validate: anObject for: self
]
