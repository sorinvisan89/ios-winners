//
//  Ticket.swift
//  demo
//
//  Created by Sorin Visan on 17/08/2020.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


struct Ticket: Identifiable {
    
    var id: String = UUID().uuidString
    var type: String
    var date: Date
    var totalOdds: Double
    var result : String
    var matches : [Match]
    
    init(id : String, type : String, date : Date, matches : [Match]){
        self.id = id
        self.type = type
        self.date = date
        self.matches = matches
        self.totalOdds = 0
        self.result = "PENDING"
        
        self.result = self.getResult(matches: matches)
        self.totalOdds = self.getTicketOdds(matches: matches)
    }
    
    private func getTicketOdds(matches: [Match]) -> Double {
        var result : Double = 1.0
        for match in matches {
            result = result * match.odds
        }
        return result
    }
    
    private func getResult(matches: [Match]) -> String {
        var allFinished : Bool = true
        for match in matches {
            if match.result == "LOST"{
                return "LOST"
            }
            if match.result == "PENDING"{
                allFinished = false
            }
        }
        
        if (allFinished == true){
            return "WON"
        }
        else {
            return "PENDING"
        }
    }
}
