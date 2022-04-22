//
//  ZeroDividableTests.swift
//  
//
//  Created by Firat Yenidunya on 22.04.2022.
//

import XCTest
@testable import WholesomeExtensions

class ZeroDividableTests: XCTestCase {
    func testZeroDividableFloat() throws {
        let firstNumber: Float = 10.0
        let secondNumber: Float = 0.0
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 0)
    }
    
    func testZeroDividableInt() throws {
        let firstNumber = 10
        let secondNumber = 0
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 0)
    }
    
    func testZeroDividableDouble() throws {
        let firstNumber: Double = 10.0
        let secondNumber: Double = 0
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 0)
    }
    
    func testZeroDividableWithoutZeroFloat() throws {
        let firstNumber: Float = 10
        let secondNumber: Float = 5
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 2)
    }
    
    func testZeroDividableWithoutZeroInt() throws {
        let firstNumber: Int = 10
        let secondNumber: Int = 5
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 2)
    }
    
    func testZeroDividableWithoutZeroDouble() throws {
        let firstNumber: Double = 10.0
        let secondNumber: Double = 5.0
        let result = firstNumber &/ secondNumber
        XCTAssertEqual(result, 2)
    }
}
