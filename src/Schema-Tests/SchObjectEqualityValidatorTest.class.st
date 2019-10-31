"
A SchObjectEqualityValidatorTest is a test class for testing the behavior of SchObjectEqualityValidator
"
Class {
	#name : #SchObjectEqualityValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests'
}

{ #category : #test }
SchObjectEqualityValidatorTest >> testValidate [
	| schema |
	schema := SchObjectEqualityValidator object: 42.
	
	self assert: (schema validate: 42) equals: 42.
	
	self should: [ schema validate: 43 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: 43 ]
]
