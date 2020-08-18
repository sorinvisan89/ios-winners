//
//  Match.swift
//  demo
//
//  Created by Sorin Visan on 17/08/2020.
//

import Foundation

struct Match: Identifiable {
    
    var id: String = UUID().uuidString
    var homeTeam : String
    var awayTeam : String
    var odds : Double
    var result : String
    var tips: String
    var date: Date
    
}
