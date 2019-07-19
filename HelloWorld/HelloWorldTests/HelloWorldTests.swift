//
//  HelloWorldTests.swift
//  HelloWorldTests
//
//  Created by Alexey Romanko on 7/19/19.
//  Copyright © 2019 Romanko. All rights reserved.
//

import XCTest

class HelloWorldTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let vc = ViewController()
        let a = vc.calculateSomething()
        XCTAssertEqual(8, a)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
