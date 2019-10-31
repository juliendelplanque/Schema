"
A SchAssociationValidatorTest is a test class for testing the behavior of SchAssociationValidator
"
Class {
	#name : #SchAssociationValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchAssociationValidatorTest >> testValidate [
	| schema |
	schema := SchAssociationValidator
					keyValidator: (SchTypeValidator expectedClass: String)
					valueValidator: (SchUseValidator block: [ :x | x asUppercase ]).
					
	self assert: (schema validate: 'name' -> 'Doe') equals: 'name' -> 'DOE'.
	
	self should: [ schema validate: 42 -> 'Wrong' ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema keyValidator.
		self assert: error invalidObject equals: 42 ]
]
