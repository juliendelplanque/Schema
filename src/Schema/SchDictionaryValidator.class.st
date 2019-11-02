Class {
	#name : #SchDictionaryValidator,
	#superclass : #SchValidator,
	#category : #'Schema-Validators'
}

{ #category : #validation }
SchDictionaryValidator >> validate: aDictionary [
	self flag: #TODO; halt.
	aDictionary isDictionary
		ifFalse: [ self signalUnexpectedType: aDictionary ].
	^ aDictionary associations collect: [ :association |
		self validatorAssociations  ]
]
