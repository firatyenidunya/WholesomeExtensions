//
//  ArrayExtensions.swift
//  
//
//  Created by Firat Yenidunya on 12.01.2022.
//

import Foundation

extension Array {
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
    public subscript(safe index: Int) -> Element? {
        guard index >= 0, index < endIndex else {
            return nil
        }
        return self[index]
    }

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
    public subscript(safe index: Int, default defaultValue: @autoclosure () -> Element) -> Element {
        guard let value = self[safe: index] else {
            return defaultValue()
        }
        return value
    }
}
