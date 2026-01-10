//
//  SearchUITests.swift
//  orderMe
//
//  Created by Adam Cegielka on 10/01/2026.
//  Copyright © 2026 Boris Gurtovoy. All rights reserved.
//

import XCTest

final class SearchUITests: XCTestCase {
    @MainActor
    func testSearchRestourant() throws {
        let app = XCUIApplication()
        app.launch()
        
        let loginLaterButton = app.buttons["loginLaterButton"]
        XCTAssertTrue(loginLaterButton.exists)
        loginLaterButton.tap()
        
        let searchField = app.textFields["SearchField"]
        XCTAssertTrue(searchField.waitForExistence(timeout: 5))
                      
        searchField.tap()
        searchField.typeText("Burger")
        
        let resultText = app.staticTexts["Burger"]
        XCTAssertTrue(resultText.waitForExistence(timeout: 5))        
    }
}
