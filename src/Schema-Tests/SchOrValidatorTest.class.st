"
A SchOrValidatorTest is a test class for testing the behavior of SchOrValidator
"
Class {
	#name : #SchOrValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests'
}

{ #category : #test }
SchOrValidatorTest >> testValidate [
	| schema |
	schema := SchOrValidator new
	validators: { 
		SchTypeValidator expectedClass: String.
		SchTypeValidator expectedClass: Integer };
	yourself.
	
	self assert: (schema validate: 1) equals: 1.
	
	self assert: (schema validate: 'str') equals: 'str'.
	
	self should: [ schema validate: 1.0 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: 1.0 ]
]
