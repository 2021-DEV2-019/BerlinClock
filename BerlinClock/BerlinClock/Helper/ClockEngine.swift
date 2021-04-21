//
//  ClockEngine.swift
//  BerlinClock
//
//

import Foundation

struct ClockEngine {

    private let calendar = Calendar.current

    /// Returns the status on/off of the "seconds lamp" from the given date via a boolean
    ///
    /// - Parameters:
    ///     - date: The current *date time* of the berlin clock
    /// - Return: A boolean that indicates if the element is *Yellow* if true and *off* if false
    func getSecondsLampStatus(date: Date) -> Bool {
        guard let seconds = getComponent(for: .second, from: date).second else {
            return false
        }
        return (seconds % 2) == 0
    }

    /// Returns the position *index* of the last element that need to be colored in the five hours row from the given date
    ///
    /// - Parameters:
    ///     - date: The current *date time* of the berlin clock
    /// - Returns: An Int representing the index of the last element
    func getFiveHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

        return hours/Row.hours
    }

    /// Returns the position *index* of the last element that need to be colored in the single hours row from the given date
    ///
    /// - Parameters:
    ///     - date: The current *date time* of the berlin clock
    /// - Returns: An Int representing the index of the last element
    func getSingleHoursLampIndex(date: Date) -> Int {
        guard let hours = getComponent(for: .hour, from: date).hour else {
            return -1
        }

        return hours%Row.hoursRemainder
    }

    /// Returns the position *index* of the last element that need to be colored in the five minutes row from the given date
    ///
    /// - Parameters:
    ///     - date: The current *date time* of the berlin clock
    /// - Returns: An Int representing the index of the last element
    func getFiveMinutesLampIndex(date: Date) -> Int {
        guard let minutes = getComponent(for: .minute, from: date).minute else {
            return -1
        }

        return minutes/Row.minutes
    }

    /// Returns the position *index* of the last element that need to be colored in the single minutes row from the given date
    ///
    /// - Parameters:
    ///     - date: The current *date time* of the berlin clock
    /// - Returns: An Int representing the index of the last element
    func getSingleMinutesLampIndex(date: Date) -> Int {
        guard let minutes = getComponent(for: .minute, from: date).minute else {
            return -1
        }

        return minutes%Row.minutesRemainder
    }

    /// Returns a calendar's dateComponents for a specific component and a given date
    ///
    /// - Parameters:
    ///     - component: The component that need to be extracted from the date
    ///     - date: The current *date time* of the berlin clock that need to be extracted
    /// - Returns: A date component for the given date
    private func getComponent(for component: Calendar.Component, from date: Date) -> DateComponents {
        return calendar.dateComponents([component], from: date)
    }
}
