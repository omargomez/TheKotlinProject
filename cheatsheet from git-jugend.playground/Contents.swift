import Cocoa
//    https://docs.swift.org/swift-book/documentation/the-swift-programming-language/thebasics#Type-Annotations
//    https://github.com/jugend/swift-cheat-sheet


var greeting = "Hello, playground"


func theBasics() {
    
    // Integers
    do {
        // Int types
        let anInt: Int // default to 32 or 64 depending on platform
        let int8: Int8
        let int16: Int16
        let int32: Int32
        let int64: Int64
        
        // Signed / Unsigned
        let signed: Int
        let unsigned: UInt

        // Bounds
        let minValue = UInt8.min // 0
        let maxValue = UInt8.max // 255
        
    }
    
    // Floating Point Numbers
    do {
        let cents: Float = 0.15 // 32-bit floating point number. Low precision
        let pi: Double = 3.141592653589793 // 64-bit. High precision
        
        _ = cents != 0 && pi != 0
    }
    
    // Type Safety and Type Inference
    do  {
        let meaningOfLife = 42    // Inferred as Int
        let pi = 3.14159          // Infered as double, Swift always chooses Double rather than Float
        let anotherPi  = 3 + 0.14 // Also inferred as double
    }
    
    // Numeric Literals
    do {
        let decimalInteger = 17
        let binaryInteger = 0b10001   // 17 in binary notation
        let octalInteger = 0o21       // 17 in octal notation
        let hexadecimalInteger = 0x11 // 17 hexa decimal notation
        
        // Float Hex literals
        let someDouble = 1.25e2  // = 1.25 x 102 = 125.0
        let anotherDouble = 1.25e-2 // = 1.25 x 10-2 = 0.0125
        
        let hexDouble = 0xC.3p0 // = (12 + 3/16) * 2^0 = 12.1875
        let anotherHexDouble = 0xAB.CDp4 // = (10*16 + 11 + 12/16 + 13/16^2) * 2^4 = 2748.8125
        
        // Extra '0' or '_' from clarity
        let paddedDouble = 000123.456
        let oneMillion = 1_000_000
        let justOverOneMillion = 1_000_000.000_000_1
    }
        
    // Numeric Type Conversion
    do {
        
        #if false
        let one: UInt = -1 // Oveflow not allowed
        let tooBig: Int8 = Int8.max + 1
        #endif
        
        // In Swift conversion need to be explicit
        let one = 1
        let half = 0.5
        let oneAndAHalf = Double(one) + half
        
        let pi = 3.1416
        let almostPi = Int(pi) // Floating point to integer ditch decimals
    }
    

    // Type aliases
    do {
        typealias AudioSample = UInt16
        var maxAmplitudeFound = AudioSample.min // UInt16.min = 0
    }
        
    // Booleans
    do {
        let orangesAreOrange = true
        let turnipsAreDelicious = false

        if turnipsAreDelicious {
            print("Mmm, tasty turnips!")
        } else {
            print("Eww, turnips are horrible.")
        }
        // Prints "Eww, turnips are horrible."
        
        #if false
        let i = 1
        if i {
            // this example will not compile, and will report an error
        }
        #else
        let i = 1
        if i == 1 {
            // this example will compile successfully
        }

        #endif
        
    }
    
    // Tuples
    do {
        let http404Error = (404, "Not found")
        let (statusCode, statusMessage) = http404Error
        print("The status code is \(statusCode)")
        // Prints "The status code is 404"
        print("The status message is \(statusMessage)")
        // Prints "The status message is Not Found"
        let (justTheStatusCode, _) = http404Error
        print("The status code is \(justTheStatusCode)")
        print("Status code is \(http404Error.0), message: \(http404Error.1)")
        let http200Status = (statusCode: 200, description: "OK")
        print("Status code: \(http200Status.statusCode)")
    }
    
    // Optionals
    do {
        let possibleNumber = "123"
        let convertedNumber = Int(possibleNumber)
        // convertedNumber is inferred to be of type "Int?", or "optional Int"

        var serverResponseCode: Int? = 404
        // serverResponseCode contains an actual Int value of 404
        serverResponseCode = nil
        // serverResponseCode now contains no value

        var surveyAnswer: String?
        // surveyAnswer is automatically set to nil

        // "OPTIONAL BINDING"
        
        if convertedNumber != nil {
            print("convertedNumber has an integer value of \(convertedNumber!).")
        }
        // Prints "convertedNumber has an integer value of 123."

        if let actualNumber = Int(possibleNumber) {
            print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
        } else {
            print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
        }
        // Prints "The string "123" has an integer value of 123"
        
        let myNumber = Int(possibleNumber)
        // Here, myNumber is an optional integer
        if let myNumber {
            print("My number is \(myNumber)")
        }
        
        if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
        // Prints "4 < 42 < 100"
        
        // "IMPLICITLY UNWRAPPED OPTIONALS"
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation point

        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation point
    }
    
    // Error Handling
    do {
        func canThrowAnError() throws {
            // this function may or may not throw an error
        }
        
        do {
            try canThrowAnError()
            // no error was thrown
        } catch {
            // an error was thrown
        }
        print("Hello")
    }
    
    // Assertions
    do {
        #if false
        let age = -3
        assert(age >= 0, "A person's age cannot be less than 0")
        #endif
    }
        
    //
}


func basicOperators() {
    
    // Assignment
    do {
        let b = 10
        let (x,y) = (1,2)
//        if x = y { // invalid } // Assignment (=) does not return a value
    }
    
    // Arithmetic Operators
    do {
       
//        Addition (+)
//        Substraction (-)
//        MUltiplication (*)
//        Division (/)

        // Reminder
        /**
         a % b
         a = (b × some multiplier) + remainder
         */
        print(9 % 4) // prints 1
        print(-9 % 4) // prints -1
        print(9 % -4) // prints 1
        
        /**
         Floating-Point Remainder Calculations
         Unlike the remainder operator in C or Obj-C, it also works on floating-point numbers
         */
        print(8.0.truncatingRemainder(dividingBy: 2.5)) // prints 0.5
        
    }
}

//theBasics()
basicOperators()
