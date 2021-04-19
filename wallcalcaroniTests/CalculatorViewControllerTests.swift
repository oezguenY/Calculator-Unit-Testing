//
//  CalculatorViewControllerTests.swift
//  wallcalcaroniTests
//
//  Created by Özgün Yildiz on 19.04.21.
//  Copyright © 2021 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorViewControllerTests: XCTestCase {
    
    var sut: CalculatorViewController!

    override func setUpWithError() throws {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        sut = (storyBoard.instantiateViewController(identifier: "CalculatorViewController") as! CalculatorViewController)
        sut.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func testAddingValue_ShouldAppendAndUpdateLabel() {
        sut.twoBtn.sendActions(for: .touchUpInside)
        sut.fiveBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "25")
    }
    
    


}
