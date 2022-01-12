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
