# Swift Bridge Builder

## Part 1: Analyzer

* Only public API
* Ignore all global var, let or functions
* Ignore all classes with template
* Ignore all protocols with associated type
* Ignore all functions with template
* Ignore all structs without Codable
* Ignore all var and let if it type is undefined
* Ignore all functions if parameter or return type is undefined
* Ignore struct if it contains non null undefined var or let

Result: build list of entities ready for generations

## Part 2: Generator(s)

* All struct generates Swift Values
* All classes generates Swift References
* All protocols generates Swift Callbacks
* All protocols generates Swift Reference (Optional)
* All block that used in functions generates Kotlin interface

Result: generate JNI bridge and Kotlin headers
