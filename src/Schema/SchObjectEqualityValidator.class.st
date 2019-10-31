Class {
	#name : #SchObjectEqualityValidator,
	#superclass : #SchObjectValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchObjectEqualityValidator >> validate: anObject [
	self object = anObject
		ifFalse: [ self signalInvalid: anObject ].
	
	^ anObject
]
