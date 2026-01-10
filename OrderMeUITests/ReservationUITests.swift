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
        app.activate()
        app/*@START_MENU_TOKEN@*/.buttons["loginLaterButton"]/*[[".buttons.containing(.staticText, identifier: \"Login Later\")",".otherElements",".buttons[\"Login Later\"]",".buttons[\"loginLaterButton\"]"],[[[-1,3],[-1,2],[-1,1,1],[-1,0]],[[-1,3],[-1,2]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.staticTexts["1 Kearny St, San Francisco, CA"]/*[[".cells.staticTexts[\"1 Kearny St, San Francisco, CA\"]",".staticTexts[\"1 Kearny St, San Francisco, CA\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.images["qrcode"]/*[[".cells[\"Detect table\"].images",".otherElements.images[\"qrcode\"]",".images[\"qrcode\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".otherElements",".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]",".textFields"],[[[-1,2],[-1,1],[-1,3],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        app/*@START_MENU_TOKEN@*/.textFields["tableNumberTextField"]/*[[".otherElements",".textFields[\"3\"]",".textFields[\"Table #\"]",".textFields[\"tableNumberTextField\"]",".textFields"],[[[-1,3],[-1,2],[-1,1],[-1,4],[-1,0,1]],[[-1,3],[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.firstMatch.typeText("3")
        app/*@START_MENU_TOKEN@*/.staticTexts["Select table"]/*[[".buttons.staticTexts[\"Select table\"]",".staticTexts",".staticTexts[\"Select table\"]"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.firstMatch.tap()
        
    }
}
