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
}
