Extension { #name : #Character }

{ #category : #'*Schema' }
Character >> asValidator [
	^ SchObjectEqualityValidator object: self
]
