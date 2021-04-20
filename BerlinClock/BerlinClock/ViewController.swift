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

        updateStackView(stackView: fiverHoursStackView, count: berlinClock.fiveHoursLampIndex)
        updateStackView(stackView: singleHoursStackView, count: berlinClock.singleHoursLampIndex)
        updateStackView(stackView: singleMinutesStackView, count: berlinClock.singleMinutesLampIndex)

        for i in 0..<berlinClock.fiveMinutesLampIndex {
            if berlinClock.fiveMinutesLampStatus(index: i) {
                fiveMinutesStackView.subviews[i].backgroundColor = .red
            } else {
                fiveMinutesStackView.subviews[i].backgroundColor = .yellow
            }
        }
    }

    private func updateStackView(stackView: UIStackView, count: Int) {
        guard count > 0 else {
            resetStackView(stackView: stackView)
            return
        }
        for i in 0..<count-1 {
            stackView.subviews[i].backgroundColor = .yellow
        }
    }

    private func resetStackView(stackView: UIStackView) {
        for i in 0..<stackView.subviews.count-1 {
            stackView.subviews[i].backgroundColor = .lightGray
        }
    }
}
