//
//  CalculationManagerTests.swift
//  wallcalcaroniTests
//
//  Created by Özgün Yildiz on 1/4/20.
//  Copyright © 2020 Özgün Yildiz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculationManagerTests: XCTestCase {
    
    var sut: CalculationManager!

    override func setUpWithError() throws {
    sut = CalculationManager()
    }

    override func tearDownWithError() throws {
     sut = nil
        
    }
    
    func testInit_WhenGivenValues_TakesValues() {
        let calcManager1 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
        let calcManager2 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
        XCTAssertEqual(calcManager1, calcManager2)
    }
    
    func testValues_AreInitiallyZero() {
        XCTAssertEqual(sut.valueA, 0)
        XCTAssertEqual(sut.valueB, 0)
    }
    
    func testValues_InsertingValues_ChangesValueA() {
        sut.insert(value: 10)
        XCTAssertEqual(sut.valueA, 10)
    }
    
    func testOperand_isCurrentlyNil() {
        XCTAssertNil(sut.currentOperand, "Operand should be nil")
    }
    
    func testOperand_WhenGivenOperand_SetOperand() {
        sut.insert(value: 20)
        sut.set(operand: .subtract)
        XCTAssertNotNil(sut.currentOperand)
    }

}
