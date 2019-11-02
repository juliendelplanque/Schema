Extension { #name : #Boolean }

{ #category : #'*Schema' }
Boolean >> asValidator [
	^ SchObjectEqualityValidator object: self
]
