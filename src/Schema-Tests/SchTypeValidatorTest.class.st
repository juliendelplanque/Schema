"
A SchTypeValidatorTest is a test class for testing the behavior of SchTypeValidator
"
Class {
	#name : #SchTypeValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests'
}

{ #category : #test }
SchTypeValidatorTest >> testValidate [
	| schema |
	schema := SchTypeValidator expectedClass: Integer.
	
	self assert: (schema validate: 123) equals: 123.
	
	self assert: (schema validate: SmallInteger maxVal + 1) equals: SmallInteger maxVal + 1.
	
	self assert: (schema validate: SmallInteger minVal - 1) equals: SmallInteger minVal - 1.
	
	self should: [ schema validate: '123' ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: '123' ]
]
