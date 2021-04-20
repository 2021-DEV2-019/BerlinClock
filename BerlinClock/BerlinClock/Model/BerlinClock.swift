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

    func fiveMinutesLampStatus(index: Int) -> Bool {
        guard index != 0 else {
            return false
        }
        return (index % 3) == 0
    }
}
