//
//  UIStackView.swift
//  BerlinClock
//
//  Created by Bryan D'HAESELEER on 21/04/2021.
//

import UIKit

extension UIStackView {

    /// Execute the process to color the backgroundColor of the UIStackview'subviews from 0 to *index* with the appropriate color *Yellow* or *Red*
    ///
    /// - Parameters:
    ///     - index: The max position to loop through
    ///     - fiveMinutesLampStatus: Indicates if the row may contains *Red* lamps
    ///
    func updateStack(to index: Int, fiveMinutesLampStatus: Bool = false) {

        guard index > 0 else {
            return resetSubviewColor()
        }
        updateSubview(to: index, fiveMinutesLampStatus: fiveMinutesLampStatus)
    }

    private func updateSubview(to index: Int, fiveMinutesLampStatus: Bool ) {

        guard fiveMinutesLampStatus else {
            for i in 0..<index {
                subviews[i].backgroundColor = Background.defaultOnColor
            }
            return
        }
        for i in 0..<index {
            //index+1 in order to get the "correct" index ( "1 to x" instead of "0 to x")
            subviews[i].backgroundColor = BerlinClock.fiveMinutesLampStatus(index: i+1) ? Background.thirdOnLamp : Background.defaultOnColor
        }
    }

    private func resetSubviewColor() {
        for view in subviews {
            view.backgroundColor = Background.defaultOffColor
        }
    }
}
