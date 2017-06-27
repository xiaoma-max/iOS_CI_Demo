//
//  AdderTests.swift
//  CI Test
//
//  Created by Jonathan Head on 16/06/2017.
//  Copyright © 2017 Appscore. All rights reserved.
//

import XCTest

class AdderTests: XCTestCase {
    var adder: Adder!
    
    override func setUp() {
        super.setUp()
        adder = Adder()
    }
    
    func testAddDefault() {
        XCTAssertEqual(3, adder.add(n1: 1, n2: 2), "Failed to calculate 1 + 2 = 3 correctly")
        XCTAssertEqual(3, adder.add(n1: 2, n2: 1), "Failed to calculate 2 + 1 = 3 correctly")
    }
    
    func testAddZero() {
        XCTAssertEqual(5, adder.add(n1: 5, n2: 0), "Failed to calculate 5 + 0 = 5 correctly")
    }
    
    func testAddNegative() {
        XCTAssertEqual(0, adder.add(n1: 1, n2: -1), "Failed to calculate 1 + -1 = 0 correctly")
        XCTAssertEqual(-1, adder.add(n1: 1, n2: -2), "Failed to calculate 1 + -2 = -1 correctly")
    }
}
