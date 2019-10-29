Class {
	#name : #SchMultiDelegateValidator,
	#superclass : #SchValidator,
	#instVars : [
		'validators'
	],
	#category : #Schema
}

{ #category : #'instance creation' }
SchMultiDelegateValidator class >> validators: validators [
	^ self new
		validators: validators;
		yourself
]

{ #category : #accessing }
SchMultiDelegateValidator >> validators [
	^ validators
]

{ #category : #accessing }
SchMultiDelegateValidator >> validators: anObject [
	validators := anObject
]
