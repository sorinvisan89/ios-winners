//
//  MathExtension.swift
//  demo
//
//  Created by Sorin Visan on 19/08/2020.
//

import Foundation


class MathUtils {
    
    static func roundToPlaces(number : Double, places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(number * divisor) / divisor
    }
    
}


