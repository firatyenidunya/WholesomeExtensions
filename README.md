# WholesomeExtensions

This package includes some extensions that I like to use.
You can find examples here and actual implementation is under /Sources folder. You can install this package via SPM.

You can find tests under /Tests 
 
### OptionalExtensions
    ///
    /// Unwraps and returns value of optional property.
    /// Returns default value if property is nil.
    ///
    ///     let integerValue: Int? = nil
    ///     let unwrappedValue = integerValue.unwrappedValue(defaultValue: 1)
    ///     print(unwrappedValue)
    ///     // prints 1
    ///
    ///     let integerValue: Int? = 5
    ///     let unwrappedValue = integerValue.unwrappedValue(defaultValue: 1)
    ///     print(unwrappedValue)
    ///     // prints 5
    public func unwrappedValue(defaultValue: @autoclosure () -> Wrapped) -> Wrapped
    
    /// where Wrapped == Data
    ///
    /// Gives empty Data if value is nil.
    /// Otherwise returns given value unwrapped
    ///
    ///     let data: Data? = nil
    ///     let result = data.orEmptyData
    ///     // result is empty Data
    ///     
    ///     let data: Data? = Data([1,2,3])
    ///     let result = data.orEmptyData
    ///     // result is Data([1,2,3]
    var orEmptyData: Data
}

    
### ArrayExtensions
    ///
    /// Returns value at givent index.
    /// If index is not in range of array  returns nil
    ///
    ///     let intArray: [Int] = [1,2,3,4]
    ///     let value = intArray[safe: 2]
    ///     print(value)
    ///     //prints Optional(3)
    ///
    ///     let intArray: [Int] = [1,2,3,4]
    ///     let value = intArray[safe: 10]
    ///     print(value)
    ///     //prints nil
    public subscript(safe index: Int) -> Element? 
    ///
    ///
    /// Returns value at given index.
    /// If index is not in range of array  returns given defaultValue
    ///
    ///     let intArray: [Int] = [1,2,3,4]
    ///     let value = intArray[safe: 2, default: 5]
    ///     print(value)
    ///     //prints 3
    ///
    ///     let intArray: [Int] = [1,2,3,4]
    ///     let value = intArray[safe: 10, default: 5]
    ///     print(value)
    ///     //prints 5
    public subscript(safe index: Int, default defaultValue: @autoclosure () -> Element) -> Element

### ZeroDividable
    ///
    /// Divides two numbers (Int, Float or Double) and returns the result.
    /// Returns 0 if rhs is zero.
    ///
    ///     let firstNumber: Float = 10.0
    ///     let secondNumber: Float = 0.0
    ///     let result = firstNumber &/ secondNumber
    ///     print(result)
    ///     // prints 0
    ///
    ///     let firstNumber: Float = 10.0
    ///     let secondNumber: Float = 5.0
    ///     let result = firstNumber &/ secondNumber
    ///     print(result)
    ///     // prints 2
    static func &/(lhs: Self, rhs: Self) -> Self where Self: ZeroDividable
