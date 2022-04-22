//
//  ZeroDividable.swift
//  
//
//  Created by Firat Yenidunya on 22.04.2022.
//

import Foundation

infix operator &/

protocol ZeroDividable: Comparable & ExpressibleByIntegerLiteral {
    static func /(lhs: Self, rhs: Self) -> Self
    static func &/(lhs: Self, rhs: Self) -> Self
}

extension ZeroDividable {
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
    public static func &/(lhs: Self, rhs: Self) -> Self where Self: ZeroDividable {
        rhs == 0 ? 0 : lhs / rhs
    }
}

extension Int: ZeroDividable {}
extension Float: ZeroDividable {}
extension Double: ZeroDividable {}
