//
//  ReservationUITests.swift
//  orderMe
//
//  Created by Adam Cegielka on 10/01/2026.
//  Copyright © 2026 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class ReservationUITests: XCTestCase {
    @MainActor
    func testExample() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["loginLaterButton"].tap()
        app.staticTexts["1 Kearny St, San Francisco, CA"].tap()
        app.images["qrcode"].tap()
        app.textFields["tableNumberTextField"].tap()
        app.textFields["tableNumberTextField"].typeText("3")
        app.buttons["Select table"].tap()
    }
    
    func testReservationFlow() {
        let app = XCUIApplication()
        app.launch()

        let loginLaterButton = app.buttons["loginLaterButton"]
        XCTAssertTrue(loginLaterButton.exists)
        loginLaterButton.tap()

        let address = app.staticTexts["1 Kearny St, San Francisco, CA"]
        XCTAssertTrue(address.waitForExistence(timeout: 5))
        address.tap()

        let qrImage = app.images["qrcode"]
        XCTAssertTrue(qrImage.exists)
        qrImage.tap()

        let tableField = app.textFields["tableNumberTextField"]
        XCTAssertTrue(tableField.exists)
        tableField.tap()
        tableField.typeText("3")

        let selectTable = app.buttons["Select table"]
        XCTAssertTrue(selectTable.exists)
        selectTable.tap()
    }
}
