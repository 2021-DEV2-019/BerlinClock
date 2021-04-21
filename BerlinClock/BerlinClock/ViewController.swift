//
//  ViewController.swift
//  BerlinClock
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var secondsLampView: UIView!
    // MARK: Hours row
    @IBOutlet private weak var fiverHoursStackView: UIStackView!
    @IBOutlet private weak var singleHoursStackView: UIStackView!
    // MARK: Minutes row
    @IBOutlet private weak var fiveMinutesStackView: UIStackView!
    @IBOutlet private weak var singleMinutesStackView: UIStackView!
    @IBOutlet private weak var hourLabel: UILabel!

    private let vm = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        vm.delegate = self
    }
}

extension ViewController: ViewModelDelegate {

    func didUpdateTickWith(berlinClock: BerlinClock) {
        secondsLampView.backgroundColor = berlinClock.secondLampStatus ? .yellow : .lightGray
        hourLabel.text = berlinClock.dateString

        fiverHoursStackView.updateStack(to: berlinClock.fiveHoursLampIndex)
        singleHoursStackView.updateStack(to: berlinClock.singleHoursLampIndex)
        fiveMinutesStackView.updateStack(to: berlinClock.fiveMinutesLampIndex, fiveMinutesLampStatus: true)
        singleMinutesStackView.updateStack(to: berlinClock.singleMinutesLampIndex)
    }
}
