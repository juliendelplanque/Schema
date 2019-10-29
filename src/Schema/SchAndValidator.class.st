Class {
	#name : #SchAndValidator,
	#superclass : #SchMultiDelegateValidator,
	#category : #Schema
}

{ #category : #validation }
SchAndValidator >> validate: anObject [
	^ (self validators collect: [ :validator |
			validator validate: anObject ]) last
]
