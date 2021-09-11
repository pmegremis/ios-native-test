import Foundation
import XCTest


class BDDTest: TestBase {

 func validEnroll() {
        givenAppIsReady()
        whenIEnter(city: "Athens")
        whenIEnrolled()
        thenIShouldSeeThankYouMessage()
    }
}

