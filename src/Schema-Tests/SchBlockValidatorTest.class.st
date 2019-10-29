"
A SchBlockValidatorTest is a test class for testing the behavior of SchBlockValidator
"
Class {
	#name : #SchBlockValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests'
}

{ #category : #test }
SchBlockValidatorTest >> testValidate [
	| schema |
	schema := SchBlockValidator block: [ :n | n > 0 ].
	
	self assert: (schema validate: 123) equals: 123.
	
	self should: [ schema validate: -12 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: -12 ]
]
