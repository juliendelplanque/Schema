Class {
	#name : #SchAndValidator,
	#superclass : #SchMultiDelegateValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchAndValidator >> validate: anObject [
	^ (self validators collect: [ :validator |
			validator validate: anObject ]) last
]
