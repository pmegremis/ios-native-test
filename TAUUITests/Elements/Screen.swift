//  Screen.swift
//  Created by Panagiotis Megremis on 5/9/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//
import Foundation
import XCTest

enum Screen: String {
    case welcomeMessage = "welcomeMessage"
    case taulogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"

var element: XCUIElement {

    switch self {
        case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .taulogo:
            return XCUIApplication().images[self.rawValue]
    }
  }
}


