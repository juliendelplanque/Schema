Class {
	#name : #SchAssociationValidator,
	#superclass : #SchValidator,
	#instVars : [
		'keyValidator',
		'valueValidator'
	],
	#category : #'Schema-Validators'
}

{ #category : #'instance creation' }
SchAssociationValidator class >> keyValidator: keyValidator valueValidator: valueValidator [
	^ self new
		keyValidator: keyValidator;
		valueValidator: valueValidator;
		yourself
]

{ #category : #accessing }
SchAssociationValidator >> keyValidator [
	^ keyValidator
]

{ #category : #accessing }
SchAssociationValidator >> keyValidator: anObject [
	keyValidator := anObject
]

{ #category : #validation }
SchAssociationValidator >> validate: anAssociation [
	anAssociation class = Association
		ifFalse: [ self signalUnexpectedType: anAssociation ].
		
	^ (self keyValidator validate: anAssociation key)
			-> (self valueValidator validate: anAssociation value)
]

{ #category : #accessing }
SchAssociationValidator >> valueValidator [
	^ valueValidator
]

{ #category : #accessing }
SchAssociationValidator >> valueValidator: anObject [
	valueValidator := anObject
]
