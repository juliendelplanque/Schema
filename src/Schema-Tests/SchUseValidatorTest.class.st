"
A SchUseValidatorTest is a test class for testing the behavior of SchUseValidator
"
Class {
	#name : #SchUseValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchUseValidatorTest >> testValidate [
	| schema |
	schema := SchUseValidator block: [ :x | x asInteger ].
	
	self assert: (schema validate: 123) equals: 123.
	
	self assert: (schema validate: '123') equals: 123.
	
	"According to the specs, if #asInteger is sent to a String
	 which do not contain an integer, it returns nil.
	 It is a bit bad but it is like that. Pay attention.
	"
	self assert: (schema validate: 'str') equals: nil.
	
	self should: [ schema validate: (2@3) ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: (2@3).
		self assert: error becauseOfError class equals: MessageNotUnderstood ]
]
