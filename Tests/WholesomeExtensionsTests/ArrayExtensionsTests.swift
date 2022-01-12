//
//  ArrayExtensionsTests.swift
//  
//
//  Created by Firat Yenidunya on 12.01.2022.
//

import XCTest
@testable import WholesomeExtensions

class ArrayExtensions: XCTestCase {

    func testSafeSubscriptWithResult() {
        let intArray: [Int] = [1,2,3,4]
        let value = intArray[safe: 2]

        XCTAssertEqual(value, 3)
    }

    func testSafeSubscriptWithNilResult() {
        let intArray: [Int] = [1,2,3,4]
        let value = intArray[safe: 10]

        XCTAssertNil(value)
    }

    func testSafeSubscriptWithResultAndDefaultValue() {
        let intArray: [Int] = [1,2,3,4]
        let value = intArray[safe: 2, default: 0]

        XCTAssertEqual(value, 3)
    }

    func testSafeSubscriptWithNilResultAndDefaultValue() {
        let intArray: [Int] = [1,2,3,4]
        let value = intArray[safe: 10, default: 0]

        XCTAssertEqual(value, 0)
    }
}
