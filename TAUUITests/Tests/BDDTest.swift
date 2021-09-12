import Foundation
import XCTest


class BDDTest: TestBase {

 func testValidEnroll() {
        givenAppIsReady()
        whenIEnter(city: "Athens")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

