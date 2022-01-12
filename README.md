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
