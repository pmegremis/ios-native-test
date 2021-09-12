import XCTest

class FuncTests: TestBase {

    func testInvalidEnroll() throws {
        // UI tests must launch the application that they test.
        XCTAssert(app.staticTexts["Welcome to XCUITest Course "].exists);
        Screen.enrollButton.element.tap();
        XCTAssert(Screen.errorMessage.element.exists);
    }
}
