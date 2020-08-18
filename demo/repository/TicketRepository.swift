//
//  TicketRepository.swift
//  demo
//
//  Created by Sorin Visan on 17/08/2020.
//

import Foundation
import FirebaseFirestore


class FirestoreTicketRepository : ObservableObject {
    
    @Published var tickets = [Ticket]()
    
    let db = Firestore.firestore()
    
    init() {
        self.loadData()
    }
    
    private func loadData() {
        db.collection("tickets").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }
            
            self.tickets = documents.map { queryDocumentSnapshot -> Ticket in
                
                let ticketId = queryDocumentSnapshot.documentID
                
                let data = queryDocumentSnapshot.data()
                let ticketType = data["type"] as? String ?? ""
                let ticketDate = data["ticketDate"] as? Timestamp ?? Timestamp()
                let matches = data["matches"] as! Array<Dictionary<String, Any>>
                
                var allMatches = [Match]()
                
                for match in matches {
                    let element = match as Dictionary<String, Any>
                    let home = element["homeTeam"] as! String
                    let away = element["awayTeam"] as! String
                    let matchOdds = element["odds"] as! Double
                    let matchResult = element["result"] as! String
                    let matchTips = element["tips"] as! String
                    let matchDate = element["date"] as! Timestamp
    
                    let toAdd = Match(homeTeam: home, awayTeam: away, odds: matchOdds, result: matchResult, tips: matchTips, date : matchDate.dateValue())
                    allMatches.append(toAdd)
                }
                
                
                return Ticket(id: ticketId, type: ticketType, date: ticketDate.dateValue(), matches: allMatches)
            }
        }
    }
}
