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

    func testSecondLampStatus() throws {
        XCTAssertTrue(clockEngine.getSecondsLampStatus(date: testDate.date_00_00_00))
        XCTAssertFalse(clockEngine.getSecondsLampStatus(date: testDate.date_23_59_59))
    }

    func testFiveHoursLampIndex() throws {
        XCTAssertEqual(clockEngine.getFiveHoursLampIndex(date: testDate.date_00_00_00), 0)
        XCTAssertEqual(clockEngine.getFiveHoursLampIndex(date: testDate.date_02_04_00), 0)
        XCTAssertEqual(clockEngine.getFiveHoursLampIndex(date: testDate.date_08_23_00), 1)
        XCTAssertEqual(clockEngine.getFiveHoursLampIndex(date: testDate.date_16_35_00), 3)
        XCTAssertEqual(clockEngine.getFiveHoursLampIndex(date: testDate.date_23_59_59), 4)
    }

    func testSingleHoursLampIndex() throws {
        XCTAssertEqual(clockEngine.getSingleHoursLampIndex(date: testDate.date_00_00_00), 0)
        XCTAssertEqual(clockEngine.getSingleHoursLampIndex(date: testDate.date_02_04_00), 2)
        XCTAssertEqual(clockEngine.getSingleHoursLampIndex(date: testDate.date_08_23_00), 3)
        XCTAssertEqual(clockEngine.getSingleHoursLampIndex(date: testDate.date_23_59_59), 3)
        XCTAssertEqual(clockEngine.getSingleHoursLampIndex(date: testDate.date_14_35_00), 4)
    }

    func testFiveMinutesLampIndex() throws {
        XCTAssertEqual(clockEngine.getFiveMinutesLampIndex(date: testDate.date_00_00_00), 0)
        XCTAssertEqual(clockEngine.getFiveMinutesLampIndex(date: testDate.date_23_59_59), 11)
        XCTAssertEqual(clockEngine.getFiveMinutesLampIndex(date: testDate.date_12_04_00), 0)
        XCTAssertEqual(clockEngine.getFiveMinutesLampIndex(date: testDate.date_12_23_00), 4)
        XCTAssertEqual(clockEngine.getFiveMinutesLampIndex(date: testDate.date_12_35_00), 7)
    }

    func testSingleMinutesLampIndex() throws {
        XCTAssertEqual(clockEngine.getSingleMinutesLampIndex(date: testDate.date_00_00_00), 0)
        XCTAssertEqual(clockEngine.getSingleMinutesLampIndex(date: testDate.date_23_59_59), 4)
        XCTAssertEqual(clockEngine.getSingleMinutesLampIndex(date: testDate.date_12_32_00), 2)
        XCTAssertEqual(clockEngine.getSingleMinutesLampIndex(date: testDate.date_12_34_00), 4)
        XCTAssertEqual(clockEngine.getSingleMinutesLampIndex(date: testDate.date_12_35_00), 0)
    }

}
