//
//  ViewModel.swift
//  BerlinClock
//
//

import Foundation

protocol ViewModelDelegate: class {
    func didUpdateTickWith(berlinClock: BerlinClock)
}

class ViewModel {

    weak var delegate: ViewModelDelegate?
    private var timer: Timer?
    private var clockEngine = ClockEngine()
    private var berlinClock: BerlinClock!

    init() {
        Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tickUpdated), userInfo: nil, repeats: true)
    }

    @objc func tickUpdated() {
        let date = Date()
        delegate?.didUpdateTickWith(berlinClock: BerlinClock(secondLampStatus: clockEngine.getSecondsLampStatus(date: date),
                                                             fiveHoursLampIndex: clockEngine.getFiveHoursLampIndex(date: date),
                                                             singleHoursLampIndex: clockEngine.getSingleHoursLampIndex(date: date),
                                                             fiveMinutesLampIndex: clockEngine.getFiveMinutesLampIndex(date: date),
                                                             singleMinutesLampIndex: clockEngine.getSingleMinutesLampIndex(date: date),
                                                             date: date))
    }
}
