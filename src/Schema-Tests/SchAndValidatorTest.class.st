"
A SchAndValidatorTest is a test class for testing the behavior of SchAndValidator
"
Class {
	#name : #SchAndValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests'
}

{ #category : #tests }
SchAndValidatorTest >> testValidate [
	| schema |
	schema := SchAndValidator new
	validators: { 
		SchBlockValidator block: [ :x | x > 0 ].
		SchTypeValidator expectedClass: Integer };
	yourself.
	
	self assert: (schema validate: 1) equals: 1.
	
	self should: [ schema validate: 0 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema validators first.
		self assert: error invalidObject equals: 0 ].
	
	self should: [ schema validate: 1.0 ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema validators second.
		self assert: error invalidObject equals: 1.0 ]
]
