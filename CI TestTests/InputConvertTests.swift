//
//  InputConvertTests.swift
//  CI Test
//
//  Created by Jonathan Head on 16/06/2017.
//  Copyright © 2017 Appscore. All rights reserved.
//

import XCTest

class InputConvertTests: XCTestCase {
    var converter: InputConverter!
    
    override func setUp() {
        super.setUp()
        converter = InputConverter()
    }
    
    func testValidInt() {
        XCTAssertTrue(converter.convertInt(input: "1")   != nil, "Failed to convert message 1")
        XCTAssertTrue(converter.convertInt(input: "0")   != nil, "Failed to convert message 0")
        XCTAssertTrue(converter.convertInt(input: "-1")  != nil, "Failed to convert message -1")
        XCTAssertTrue(converter.convertInt(input: "15")  != nil, "Failed to convert message 15")
        XCTAssertTrue(converter.convertInt(input: "-15") != nil, "Failed to convert message -15")
    }
    
    func testInvalidInt() {
        XCTAssertTrue(converter.convertInt(input: "spider-man") == nil, "Failed to convert message spider-man")
        XCTAssertTrue(converter.convertInt(input: "a")          == nil, "Failed to convert message a")
        XCTAssertTrue(converter.convertInt(input: "?")          == nil, "Failed to convert message ?")
        XCTAssertTrue(converter.convertInt(input: "--1")        == nil, "Failed to convert message --1")
        XCTAssertTrue(converter.convertInt(input: "Infinity")   == nil, "Failed to convert message Infinity")
    }
    
}
