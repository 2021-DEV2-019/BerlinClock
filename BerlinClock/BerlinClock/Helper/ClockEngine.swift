//
//  ClockEngine.swift
//  BerlinClock
//
//

import Foundation

struct ClockEngine {

    private let calendar = Calendar.current

    func getSecondsLampStatus(date: Date) -> Int {
        guard let seconds = getComponent(for: .second, from: date).second else {
            return -1
        }
        return (seconds % 2)
    }

    func getFiveHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

        return hours/RowWeight.hours
    }

    func getSingleHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

      return hours%RowWeight.hours
    }

    private func getComponent(for component: Calendar.Component, from date: Date) -> DateComponents {
        return calendar.dateComponents([component], from: date)
    }
}
