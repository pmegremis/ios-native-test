import Foundation
import XCTest


class BDDTest: TestBase {

 func testThankYouMessageInBDStyle() {
        givenAppIsReady()
        whenIEnter(city: "Athens")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

