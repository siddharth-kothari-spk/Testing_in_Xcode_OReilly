//
//  Testing_in_Xcode_OReillyTests.swift
//  Testing_in_Xcode_OReillyTests
//
//  Created by Siddharth Kothari on 08/04/24.
//

import XCTest
@testable import Testing_in_Xcode_OReilly

final class Testing_in_Xcode_OReillyTests: XCTestCase {

    var sut: ViewController?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ViewController()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func test_checkEmail() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        XCTAssertNotNil(sut?.checkEmail(""))
        
        XCTAssertNotNil(sut?.checkEmail("a"))

        XCTAssertNotNil(sut?.checkEmail("a@"))
        
        XCTAssertNotNil(sut?.checkEmail("a@acom"))
        
        XCTAssertNotNil(sut?.checkEmail("@a.com"))
        
        XCTAssertNil(sut?.checkEmail("a@a.com"))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
