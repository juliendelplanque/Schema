"
A SchStrictTypeValidatorTest is a test class for testing the behavior of SchStrictTypeValidator
"
Class {
	#name : #SchStrictTypeValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchStrictTypeValidatorTest >> testValidate [
	| schema |
	schema := SchStrictTypeValidator expectedClass: SmallInteger.
	
	self assert: (schema validate: 123) equals: 123.
	
	self should: [ schema validate: SmallInteger maxVal + 1 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: SmallInteger maxVal + 1 ]
]
