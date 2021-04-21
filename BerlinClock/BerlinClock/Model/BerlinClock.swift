//
//  Mode.swift
//  BerlinClock
//
//

import Foundation

struct BerlinClock {
    var secondLampStatus: Bool
    var fiveHoursLampIndex: Int
    var singleHoursLampIndex: Int
    var fiveMinutesLampIndex: Int
    var singleMinutesLampIndex: Int
    var date: Date

    var dateString: String {
        let dateFormat = DateFormatter()
        dateFormat.dateFormat = DateFormatting.hourFormat
        return dateFormat.string(from: self.date)
    }

    /// Returns the status yellow/red of the five minutes lamp row through a boolean
    ///
    /// - Parameters:
    ///     - index: The current index of the element
    /// - Return: A boolean that indicates if the element is *Red* if true and *Yellow* if false
    static func fiveMinutesLampStatus(index: Int) -> Bool {
        guard index != 0 else {
            return false
        }
        return (index % 3) == 0
    }
}
