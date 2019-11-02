Extension { #name : #ClassDescription }

{ #category : #'*Schema' }
ClassDescription >> asValidator [
	^ SchTypeValidator expectedClass: self
]
