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

}
