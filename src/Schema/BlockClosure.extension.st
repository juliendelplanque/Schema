Extension { #name : #BlockClosure }

{ #category : #'*Schema' }
BlockClosure >> asValidator [
	^ SchBlockValidator block: self
]
