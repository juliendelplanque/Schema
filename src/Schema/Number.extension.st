Extension { #name : #Number }

{ #category : #'*Schema' }
Number >> asValidator [
	^ SchObjectEqualityValidator object: self
]
