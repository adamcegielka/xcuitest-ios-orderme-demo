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
        
        app/*@START_MENU_TOKEN@*/.buttons["loginLaterButton"]/*[[".buttons.containing(.staticText, identifier: \"Login Later\")",".otherElements",".buttons[\"Login Later\"]",".buttons[\"loginLaterButton\"]"],[[[-1,3],[-1,2],[-1,1,1],[-1,0]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["1 Kearny St, San Francisco, CA"].tap()
        app/*@START_MENU_TOKEN@*/.images["qrcode"]/*[[".cells[\"Detect table\"].images",".otherElements.images[\"qrcode\"]",".images[\"qrcode\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".otherElements",".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".otherElements",".textFields[\"3\"]",".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]",".textFields"],[[[-1,3],[-1,2],[-1,1],[-1,4],[-1,0,1]],[[-1,3],[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.typeText("3")
        app/*@START_MENU_TOKEN@*/.staticTexts["Select table"]/*[[".buttons.staticTexts[\"Select table\"]",".staticTexts",".staticTexts[\"Select table\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
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
