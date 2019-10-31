Class {
	#name : #SchOrValidator,
	#superclass : #SchMultiDelegateValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchOrValidator >> validate: anObject [
	self validators do: [ :validator |
			[
				^ validator validate: anObject
			] on: SchSchemaError
			do: [ "Continue" ] ].
	
	self signalInvalid: anObject
]
