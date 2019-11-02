"
A SchDictionaryValidatorTest is a test class for testing the behavior of SchDictionaryValidator
"
Class {
	#name : #SchDictionaryValidatorTest,
	#superclass : #TestCase,
	#category : #'Schema-Tests-Validators'
}

{ #category : #tests }
SchDictionaryValidatorTest >> testValidate [
	| schema dictionary |
	schema := SchDictionaryValidator new
					at: (SchObjectEqualityValidator object: 'name') put: (SchTypeValidator expectedClass: String);
					at: (SchObjectEqualityValidator object: 'age') put: (SchBlockValidator block: [ :age | age between: 18 and: 99 ]);
					yourself.
	dictionary := { 'name' -> 'Sue'. 'age' -> 28 } asDictionary.
	
	self assert: (schema validate: dictionary)
	
]

{ #category : #tests }
SchDictionaryValidatorTest >> testValidateKeysAsSchema [
	| schema dictionary |
	schema := SchDictionaryValidator new
					at: (SchTypeValidator expectedClass: String) put: (SchTypeValidator expectedClass: Integer);
					at: (SchTypeValidator expectedClass: Integer) put: (SchObjectValidator object: nil);
					yourself.
	dictionary := {'key1' -> 1. 'key2' -> 2. 10 -> nil. 20 -> nil} asDictionary.
	
	self assert: (schema validate: dictionary).
	
	dictionary := {'key1' -> 1. 10 -> 'not None here'} asDictionary.
	self should: [ schema validate: dictionary ] raise: SchSchemaError withExceptionDo: [ :error |
		self assert: error validator equals: schema.
		self assert: error invalidObject equals: 'not None here' ]
]
