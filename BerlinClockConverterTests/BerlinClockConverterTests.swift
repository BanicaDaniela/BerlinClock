//
//  BerlinClockConverterTests.swift
//  BerlinClockConverterTests
//
//  Created by Daniela Banica on 11/02/2019.
//  Copyright © 2019 Daniela Banica. All rights reserved.
//

import XCTest
@testable import BerlinClockConverter

class BerlinClockConverterTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    let Clock = ViewController()
    
    func testGetSecondsLine() {
        XCTAssertEqual("Y", Clock.getSecondsLine(seconds: 0))
    }
    
    func testGetFirstHourLine(){
        XCTAssertEqual("RROO", Clock.getFirstLHourLine(hour: 13))
        
    }
    
    func testGetSecondHourLine(){
        XCTAssertEqual("RRRO", Clock.getSecondHourLine(hour: 13))
        XCTAssertEqual("ROOO", Clock.getSecondHourLine(hour: 11))
        
    }
    
    func testGetFirstMinutesLine(){
        XCTAssertEqual("YYROOOOOOOO", Clock.getFirstMinutesLine(minutes: 17))
        
    }
    
    func testGetSecondMInutesLine(){
        XCTAssertEqual("YYOO", Clock.getSecondMinutesLine(minutes: 17))
        
    }
    
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
