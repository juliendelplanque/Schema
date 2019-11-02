Extension { #name : #UndefinedObject }

{ #category : #'*Schema' }
UndefinedObject >> asValidator [
	^ SchObjectEqualityValidator object: self
]
