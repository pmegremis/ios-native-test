import XCTest

class EnrollTests: TestBase {

    func testNoInput() throws {
        // UI tests must launch the application that they test.
        XCTAssert(app.staticTexts["Welcome to XCUITest Course "].exists);
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap();
        XCTAssert(app.staticTexts["Please Enter City"].exists);
    }
    
    func testInput() throws {
        app.textFields["city"].tap()
        app.textFields["city"].typeText("Athens");
        XCUIApplication()/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap();
        XCTAssert(app.staticTexts["Thanks for Joining!"].exists);
        
    }
}
