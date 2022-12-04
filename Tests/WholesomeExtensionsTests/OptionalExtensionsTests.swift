//
//  OptionalExtensionsTests.swift
//
//
//  Created by Firat Yenidunya on 12.01.2022.
//

import XCTest
@testable import WholesomeExtensions

final class OptionalExtensionsTests: XCTestCase {

    func testUnwrapWithValue() {
        let value: Int? = 3

        let result = value.unwrappedValue(defaultValue: 0)
        XCTAssertEqual(result, 3)
    }

    func testUnwrapWithNilValue() {
        let value: Int? = nil

        let result = value.unwrappedValue(defaultValue: 0)
        XCTAssertEqual(result, 0)
    }

    func testWhenDataIsNil() {
        let data: Data? = nil

        let result = data.orEmptyData

        XCTAssertEqual(result, Data())
    }

    func testWhenDataIsNotNil() {
        let data: Data? = Data([1,2,3])
        
        let result = data.orEmptyData

        XCTAssertEqual(result, Data([1,2,3]))
    }
}
