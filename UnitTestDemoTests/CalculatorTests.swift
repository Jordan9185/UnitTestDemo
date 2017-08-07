//
//  CalculatorTests.swift
//  UnitTestDemo
//
//  Created by JordanLin on 2017/8/7.
//  Copyright © 2017年 JordanLin. All rights reserved.
//

import XCTest

@testable import UnitTestDemo

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator?
    
    override func setUp() {
        
        super.setUp()
        
        calculator = Calculator()
        
    }
    
    override func tearDown() {
        
        calculator = nil
        
        super.tearDown()
        
    }
    
    func testAdd() {
        
        XCTAssertEqual(
            calculator!.add(8, 9),
            17
        )
        
        XCTAssertEqual(
            calculator!.add(9, 8),
            17
        )
        
    }
    
    func testMultiple() {
        
        XCTAssertEqual(
            calculator!.multiple(3, 5),
            15
        )
        
        XCTAssertEqual(
            calculator!.multiple(5, 3),
            15
        )
    }
    
}
