"
A SchListValidatorTest is a test class for testing the behavior of SchListValidator
"
Class {
	#name : #SchListValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchListValidatorTest >> testValidate [
	| schema |
	schema := SchListValidator validators: { 
					SchBlockValidator block: [ :x | x > 0 ].
					SchUseValidator block: [ :str | str asUppercase ] }.
					
	self assertCollection: (schema validate: #(2 'foo')) equals: #(2 'FOO').
	
	self should: [ schema validate: #(-1) ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: -1 ]
]
