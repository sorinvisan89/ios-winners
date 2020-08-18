//
//  Utility.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import Foundation



class Utility {
    
    let imageNames : [String] = ["fotball1", "fotball2", "fotball3"]
    
    public func getNameFromIndex(index : Int) -> String {
        return self.imageNames[index % imageNames.count]
    }
}
