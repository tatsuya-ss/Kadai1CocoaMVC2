//
//  Kadai1CocoaMVCTatsuyaTests.swift
//  Kadai1CocoaMVCTatsuyaTests
//
//  Created by 坂本龍哉 on 2021/04/15.
//

import XCTest
@testable import Kadai1CocoaMVCTatsuya

class Kadai1CocoaMVCTatsuyaTests: XCTestCase {

    
    func testcalculate() {
        let calculateModel = CalculateModel()
        let numberArray = [1, 2, 3, 4, 5]
        XCTAssertEqual(calculateModel.sum(numberArray), 15)
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
