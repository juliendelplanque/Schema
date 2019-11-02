Extension { #name : #String }

{ #category : #'*Schema' }
String >> asValidator [
	^ SchObjectEqualityValidator object: self
]
