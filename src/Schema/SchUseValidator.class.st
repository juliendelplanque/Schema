Class {
	#name : #SchUseValidator,
	#superclass : #SchValidator,
	#instVars : [
		'block'
	],
	#category : #'Schema-Validators'
}

{ #category : #'instance creation' }
SchUseValidator class >> block: block [
	^ self new
		block: block;
		yourself
]

{ #category : #accessing }
SchUseValidator >> block [
	^ block
]

{ #category : #accessing }
SchUseValidator >> block: anObject [
	block := anObject
]

{ #category : #validation }
SchUseValidator >> validate: anObject [
	[
		^ self block value: anObject
	] on: Error
	do: [ self signalInvalid: anObject ]
]
