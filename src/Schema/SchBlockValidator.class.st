Class {
	#name : #SchBlockValidator,
	#superclass : #SchValidator,
	#instVars : [
		'block'
	],
	#category : #'Schema-Validators'
}

{ #category : #'instance creation' }
SchBlockValidator class >> block: block [
	^ self new
		block: block;
		yourself
]

{ #category : #accessing }
SchBlockValidator >> block [
	^ block
]

{ #category : #accessing }
SchBlockValidator >> block: anObject [
	block := anObject
]

{ #category : #validation }
SchBlockValidator >> validate: anObject [
	([ self block value: anObject ] on: Error do: [ false ])
		ifFalse: [ self signalInvalid: anObject ].
		
	^ anObject
]
