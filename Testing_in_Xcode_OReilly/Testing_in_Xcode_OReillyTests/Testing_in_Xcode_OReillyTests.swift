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
        person?.email = "aa@aa.co"
        person?.password = "pass"
        person?.bornYear = "1988"
        person?.approveTerms = true
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        person = nil
    }

    func test_checkEmail() throws {
        
        person?.email = ""
        XCTAssertNotNil(person?.checkForm())
        
        person?.email = "a"
        XCTAssertNotNil(person?.checkForm())

        person?.email = "a@"
        XCTAssertNotNil(person?.checkForm())
        
        person?.email = "a@acom"
        XCTAssertNotNil(person?.checkForm())
        
        person?.email = "@a.com"
        XCTAssertNotNil(person?.checkForm())
        
        person?.email = "a@a.com"
        XCTAssertNil(person?.checkForm())
    }
    
    func test_checkPassword() throws {
        
        person?.password = ""
        XCTAssertNotNil(person?.checkForm())
        
        person?.password = "pass"
        XCTAssertNil(person?.checkForm())
    }

    func test_checkAge() throws {
        
        person?.bornYear = ""
        XCTAssertEqual(person?.checkForm(), "Enter valid birth year")
        
        person?.bornYear = "1970"
        XCTAssertNil(person?.checkForm())
        
        person?.bornYear = "ABC"
        XCTAssertEqual(person?.checkForm(), "Enter valid birth year")
        
        person?.bornYear = "2020"
        XCTAssertEqual(person?.checkForm(), "Not eligible")
    }
    
    
    func testApproved() throws {
        
        person?.approveTerms = true
        XCTAssertNil(person?.checkForm())
        
        person?.approveTerms = false
        XCTAssertNotNil(person?.checkForm())
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
