//
//  DoubleExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 8/6/16.
//  Copyright © 2016 SwifterSwift
//

#if canImport(CoreGraphics)
import CoreGraphics
#endif

// MARK: - Properties
public extension Double {

    /// SwifterSwift: Int.
    public var int: Int {
        return Int(self)
    }

    /// SwifterSwift: Float.
    public var float: Float {
        return Float(self)
    }

    #if canImport(CoreGraphics)
    /// SwifterSwift: CGFloat.
    public var cgFloat: CGFloat {
        return CGFloat(self)
    }
    #endif

    /// SwifterSwift: Convert from one unit of length measurement to another
    ///
    /// - Parameters:
    ///   - originalUnit: The original unit of measurement
    ///   - convertedUnit: The unit of measurement to be outputted
    /// - Returns: The Double's converted unit of measurement
    @available(iOS 10.0, tvOS 10.0, watchOS 3.0, *)
    func convert(from originalUnit: UnitLength, to convertedUnit: UnitLength) -> Double {
        return Measurement(value: self, unit: originalUnit).converted(to: convertedUnit).value
    }
}

// MARK: - Operators

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ** : PowerPrecedence
/// SwifterSwift: Value of exponentiation.
///
/// - Parameters:
///   - lhs: base double.
///   - rhs: exponent double.
/// - Returns: exponentiation result (example: 4.4 ** 0.5 = 2.0976176963).
public func ** (lhs: Double, rhs: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return pow(lhs, rhs)
}

// swiftlint:disable next identifier_name
prefix operator √
/// SwifterSwift: Square root of double.
///
/// - Parameter double: double value to find square root for.
/// - Returns: square root of given double.
public prefix func √ (double: Double) -> Double {
    // http://nshipster.com/swift-operators/
    return sqrt(double)
}
