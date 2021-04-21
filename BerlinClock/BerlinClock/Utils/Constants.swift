//
//  Constants.swift
//  BerlinClock
//
//

import UIKit

struct Row {
    static let hours = 5
    static let minutes = 5
    static let hoursRemainder = 5
    static let minutesRemainder = 5

    private init() {
    }
}

struct Time {
    static let defaultInterval: Double = 1

    private init() {
    }
}

struct DateFormatting {

    static let iOSDefaultDateFormat = "yyyy-MM-dd HH:mm:ss"
    static let hourFormat = "HH:mm:ss"

    private init() {
    }
}

struct Background {
    static let defaultOffColor = UIColor.lightGray
    static let defaultOnColor = UIColor.yellow
    static let thirdOnLamp = UIColor.red
}
