//
//  Testing_in_Xcode_OReillyUITestsLaunchTests.swift
//  Testing_in_Xcode_OReillyUITests
//
//  Created by Siddharth Kothari on 08/04/24.
//

import XCTest

final class Testing_in_Xcode_OReillyUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
