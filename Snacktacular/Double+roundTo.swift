//
//  Double+roundTo.swift
//  Snacktacular
//
//  Created by Kathryn Tatum on 4/18/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import Foundation

//rounds any double to places

extension Double {
    
    func roundTo(places: Int) -> Double {
        let tenToPower = pow(10.0, Double((places >= 0 ? places : 0)))
        let roundedValue = (self * tenToPower).rounded() / tenToPower
        return roundedValue
    }
}
