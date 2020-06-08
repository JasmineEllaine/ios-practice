// Lesson 1: Basics
// ----------------
// https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html

// Constants and Variables
let someConstantVariable = "This is how you declare constants."
var aNormalVariable = "This is how you declare normal variables."

var a = "These are", b = "multiple variables", c = "declared on the same line"

// Data Type Annotations
var typeAnnotationsOptional: Bool
// The variable above means that it has been declared as a "Bool"
// but does not yet have a value
var multiple, variable, singlelLine, annotations: Int
// Variables in swift cannot change the type of data they hold
// You can't make a constant a variable, or a variable a constant
// after declaration

// Type Safety/Interference
// Swift encourages you to be clear about the data types of vars
// However you don't need to specify the data type every time
// because Swift infers that data type if you initialise a value

// Naming
let π = 3.14159
let 你好 = "你好世界 This variable can contain other languages"
let 🐶🐮 = "They can even use emojis"
// Just no whitespace, math symbols, arrows, private Unicode
// values, or line and box drawing characters

// Printing
print("This will print this sentence with a newline at the end.") 
print("This will print without a new line ", terminator: "") 
print("so this will be attached right after.") 
// >>> This will print this sentence with a newline at the end.
// >>> This will print without a new line so this will be attached
//      right after.
print("This will print the result of 3 + 5: \(3+5).")
// Put stuff in  \()  when you need to do code inside a print.

// Comments
// This is a short comment
/* 
 * This is a
 * multiline comment 
 */ 
/* This is the start of the first multiline comment.
    /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */

// Semicolons
let semicolons = "They are optional most of the time"
var semicolonsOtherTimes = "Required if declaring multiple statements in one line"
let exampleA = 1; exampleB = 2;

// Integers
// Can be un/signed, 8, 16. 32, 64 bit. Same syntax as C
// UInt8 = Unsigned int 8 bit
// Int64 = Signed int 64 bit
UInt8 = 1
// Int/UInt gives the default integer size
// on a 32-bit device, Int = Int32, UInt = UInt32
// on a 64-bit device, Int = Int63, UInt = UInt64

// Integer Bounds
let minValue = UInt8.min // equal to 0
let maxValue = UInt8.max // equal to 255

// Floating Point
var my64BitFloatingPoint: Double // precision: 15 decimal
var my32BitFloatingPoint: Float // precision: 6 decimal

// Default floating point is Double
// Default integer is Int

// Numeric Literals
// A decimal number, with no prefix
// A binary number, with a 0b prefix
// An octal number, with a 0o prefix
// A hexadecimal number, with a 0x prefix
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11
// Numeric literals can contain extra formatting to make them
// easier to read. 
let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Decimal floats can also have an optional exponent, indicated
// by an uppercase or lowercase e;
// Hexadecimal floats must have an exponent, indicated by an
// uppercase or lowercase p
// Decimal numbers with exponent 'exp': base number is
// multiplied by 10exp
// 1.25e2 means 1.25 x 102, or 125.0.
// 1.25e-2 means 1.25 x 10-2, or 0.0125.
// ---
// Hexadecimal numbers with exponent 'exp': base number is
// multiplied by 2exp
// 0xFp2 means 15 x 22, or 60.0.
// 0xFp-2 means 15 x 2-2, or 3.75.
let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

// Integer Conversion
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Integer and Floating Point Conversion
// Must be explicit
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

// Type Alias
typealias AlternativeNameForUInt16 = UInt16
var maxOFUInt16 = AlternativeNameForUInt16.max // UInt16.max

// Boolean
var iAmTrue = true
var iAmFalse = false
// Boolean and Type Safety
let i = 1
if i {
    // this will give an error because of Type Safety
    // Int cant be converted to bool
}

// Tuples
let ImATuple = ("hello", 1234, true)
var (tupleItem1, _, tupleItem2)= ImATuple
// tupleItem1 = "hello"
// tupleItem2 = true
// use _ if you don't need something
let tupleItem1 = ImATuple[0] // same value

let imANewTuple = (hello: 1, world: "yes")
var hello = imANewTuple.hello // equal to 1

// Optionals
// doesn't exist in C
// use where a value may be absent
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?"
// aka "optional Int"
// Int? means it might contain some Int value or nothing at all
// no String, no Bool, etc

// Nil
let noValue:Int? = nil
// Must use a optional variable type
let imAutomaticallySetToNil: String?
// because there is no default value

// Forced Unwrapper
// If a var is optional type, you need to unwrap first before
// using its value by addding "!" to the end of the variable name
if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}

// Error Handling
func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
// In this example, the makeASandwich() function will throw an
// error if no clean dishes are available or if any ingredients
// are missing. Because makeASandwich() can throw an error, the
// function call is wrapped in a try expression. By wrapping the
// function call in a do statement, any errors that are thrown
// will be propagated to the provided catch clauses.

// Assertions and Preconditions
// Assertions are checked only in debug builds
// Preconditions are checked in both debug and production builds
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 is not >= 0.
// The second argument is just the assertion message (optional)
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}
// Assertion Failure can be used to indicate an assertion has failed

// Precoditions
// Use when a condition has the potential to be false, but must
// definitely be true for your code to continue execution
// In the implementation of a subscript...
precondition(index > 0, "Index must be greater than zero.")
// Similar to above, there is also preconditionFailure()

// Further reading
// String interpolation: https://docs.swift.org/swift-book/LanguageGuide/String
// Type Safety and Type Interference: https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html#ID322
// Optional Binding and Implicitly Unwrapped Optionals: https://docs.swift.org/swift-book/LanguageGuide/TheBasics.html#ID330