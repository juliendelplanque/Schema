Extension { #name : #RxMatcher }

{ #category : #'*Schema' }
RxMatcher >> validate: anObject for: validator [
	(self matches: anObject)
		ifFalse: [ validator signalInvalid: anObject ].
	
	^ anObject
]
