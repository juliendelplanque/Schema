"
A SchConstValidatorTest is a test class for testing the behavior of SchConstValidator
"
Class {
	#name : #SchConstValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchConstValidatorTest >> testValidate [
	| schema |
	schema := SchConstValidator validator: (SchUseValidator block: [ :x | x * 2 ]).
	
	self assert: (schema validate: 2) equals: 2.
	
	self should: [ schema validate: 'str' ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema validator.
		self assert: error invalidObject equals: 'str' ]
]
