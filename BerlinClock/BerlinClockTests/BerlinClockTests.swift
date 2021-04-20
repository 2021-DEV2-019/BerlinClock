//
//  BerlinClockTests.swift
//  BerlinClockTests
// Test case from http://agilekatas.co.uk/katas/BerlinClock-Kata
//

import XCTest
@testable import BerlinClock

class BerlinClockTests: XCTestCase {

    private var clockEngine: ClockEngine!
    private var testDate = DateTestsConstants()

    override func setUp() {
        clockEngine = ClockEngine()
    }

    override func tearDown() {
        clockEngine = nil
    }

    func testSecondLamp() throws {
        XCTAssertEqual(clockEngine.getSecondsLampStatus(date: testDate.date_00_00_00), 1)
        XCTAssertEqual(clockEngine.getSecondsLampStatus(date: testDate.date_23_59_59), 0)
    }
}
