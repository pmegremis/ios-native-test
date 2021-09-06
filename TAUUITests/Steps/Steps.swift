import Foundation
import XCTest


extension TestBase {

    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App is ready ") { _ in
            XCTAssertTrue(Screen.enrollButton.element.exists)
        }
    }

    func whenIEnter(city: String) {
        XCTContext.runActivity(named: "When I enter city \(city) ") { _ in
            Screen.cityTextField.element.tap()
            Screen.cityTextField.element.typeText(city)
        }
    }

    func whenIEnrolled() {
        XCTContext.runActivity(named: "When I Enrolled ") { _ in
            Screen.enrollButton.element.tap()
        }

    }

    func thenIShouldSeeThankYouMessage() {
        XCTContext.runActivity(named: "Then I Should See Thanks message ") { _ in
            AsyncAssert(Screen.thankYouMessage.element)
        }
    }

}


