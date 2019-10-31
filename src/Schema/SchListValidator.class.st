Class {
	#name : #SchListValidator,
	#superclass : #SchOrValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchListValidator >> validate: anIterableObject [
	(anIterableObject class canUnderstand: #collect:)
		ifFalse: [ self signalUnexpectedType: anIterableObject ].
	
	^ anIterableObject collect: [ :object |
		super validate: object ]
]
