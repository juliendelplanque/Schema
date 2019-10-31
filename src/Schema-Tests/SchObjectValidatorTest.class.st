"
A SchObjectValidatorTest is a test class for testing the behavior of SchObjectValidator
"
Class {
	#name : #SchObjectValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchObjectValidatorTest >> testValidate [
	| mock schema anotherMock |
	mock := SchMockObjectThatValidate new.
	schema := SchObjectValidator object: mock.
	
	self assert: (schema validate: mock) equals: mock.
	
	anotherMock := SchMockObjectThatValidate new.
	self should: [ schema validate: anotherMock ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: anotherMock ]
]
