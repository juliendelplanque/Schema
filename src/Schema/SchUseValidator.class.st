Class {
	#name : #SchUseValidator,
	#superclass : #SchValidator,
	#instVars : [
		'block'
	],
	#category : #Schema
}

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
