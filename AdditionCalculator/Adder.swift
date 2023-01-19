//
//  Adder.swift
//  AdditionCalculator
//
//  Created by Luther Stanton on 12/29/22.
//

import Foundation

public class Adder {
    
    public init() {
        
    }
    
    public func addIntegerOperands(operandOne: Int, operandTwo: Int) -> Int {
        return operandTwo + operandOne
    }
    
    public func addDoubleOperands(operandOne: Double, operandTwo: Double) -> Double {
        return operandOne + operandTwo
    }
}
