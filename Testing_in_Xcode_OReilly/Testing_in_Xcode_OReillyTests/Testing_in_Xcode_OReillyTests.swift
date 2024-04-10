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
    var person: Person?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = ViewController()
        person = Person()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        person = nil
    }

    func test_checkEmail() throws {
        
        person?.email = ""
        XCTAssertNotNil(person?.checkEmail())
        
        person?.email = "a"
        XCTAssertNotNil(person?.checkEmail())

        person?.email = "a@"
        XCTAssertNotNil(person?.checkEmail())
        
        person?.email = "a@acom"
        XCTAssertNotNil(person?.checkEmail())
        
        person?.email = "@a.com"
        XCTAssertNotNil(person?.checkEmail())
        
        person?.email = "a@a.com"
        XCTAssertNil(person?.checkEmail())
    }
    
    func test_checkPassword() throws {
        
        person?.password = ""
        XCTAssertNotNil(person?.checkPassword())
        
        person?.password = "pass"
        XCTAssertNil(person?.checkPassword())
    }

    func test_checkAge() throws {
        person?.bornYear = ""
        XCTAssertTrue(((person?.checkAge()) == nil))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
