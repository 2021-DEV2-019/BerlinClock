//
//  ClockEngine.swift
//  BerlinClock
//
//

import Foundation

struct ClockEngine {

    private let calendar = Calendar.current

    func getSecondsLampStatus(date: Date) -> Bool {
        guard let seconds = getComponent(for: .second, from: date).second else {
            return false
        }
        return (seconds % 2) == 0
    }

    func getFiveHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

        return hours/Row.hours
    }

    func getSingleHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

      return hours%Row.hoursRemainder
    }

    func getFiveMinutesLampIndex(date: Date) -> Int {
        guard let minutes = getComponent(for: .minute, from: date).minute else {
            return -1
        }

        return minutes/Row.minutes
    }

    func getSingleMinutesLampIndex(date: Date) -> Int {
        guard let minutes = getComponent(for: .minute, from: date).minute else {
            return -1
        }

      return minutes%Row.minutesRemainder
    }

    private func getComponent(for component: Calendar.Component, from date: Date) -> DateComponents {
        return calendar.dateComponents([component], from: date)
    }
}
