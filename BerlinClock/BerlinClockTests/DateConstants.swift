//
//  Constants.swift
//  BerlinClock
//
//

import Foundation

struct DateTestsConstants {

    private var dateFormatter = DateFormatter()

    // MARK: - generic date
    var date_23_59_59: Date {
        return dateFormatter.date(from: "1972-04-30 23:59:59")!
    }

    var date_00_00_00: Date {
        return dateFormatter.date(from: "1972-04-30 00:00:00")!
    }

    var date_02_04_00: Date {
        return dateFormatter.date(from: "1972-04-30 02:04:00")!
    }

    var date_08_23_00: Date {
        return dateFormatter.date(from: "1972-04-30 08:23:00")!
    }

    var date_12_35_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:35:00")!
    }

    // MARK: - specific single hours row
    var date_14_35_00: Date {
        return dateFormatter.date(from: "1972-04-30 14:35:00")!
    }

    // MARK: - specific five hours row
    var date_16_35_00: Date {
        return dateFormatter.date(from: "1972-04-30 16:35:00")!
    }

    // MARK: - specific single minutes row
    var date_12_32_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:32:00")!
    }

    var date_12_34_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:34:00")!
    }

    // MARK: - specific five minutes row
    var date_12_04_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:04:00")!
    }

    var date_12_23_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:23:00")!
    }

    // MARK: - specific single minutes row third light

    var date_12_15_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:15:00")!
    }

    var date_12_30_00: Date {
        return dateFormatter.date(from: "1972-04-30 12:30:00")!
    }

    // MARK: - Entire clock
    var date_16_50_06: Date {
        return dateFormatter.date(from: "1972-04-30 16:50:06")!
    }

    var date_11_37_01: Date {
        return dateFormatter.date(from: "1972-04-30 11:37:01")!
    }

    // MARK: - init()
    init() {
        //for any reason DateFormatting Struct isn't known here
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    }
}
