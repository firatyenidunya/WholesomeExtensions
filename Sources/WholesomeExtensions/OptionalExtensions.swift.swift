//
//  OptionalExtensions.swift.swift
//  
//
//  Created by Firat Yenidunya on 12.01.2022.
//

import Foundation

extension Optional {
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
    public func unwrappedValue(defaultValue: @autoclosure () -> Wrapped) -> Wrapped {
        guard let value = self else {
            return defaultValue()
        }
        return value
    }
}

extension Optional where Wrapped == Data {
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
    var orEmptyData: Data {
        self ?? Data()
    }
}
