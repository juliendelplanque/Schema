Class {
	#name : #SchStrictTypeValidator,
	#superclass : #SchTypeValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchStrictTypeValidator >> validate: anObject [
	anObject class = self expectedClass
		ifFalse: [ self signalInvalid: anObject ].
	^ anObject
]
