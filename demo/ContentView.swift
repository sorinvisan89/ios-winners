//
//  ContentView.swift
//  demo
//
//  Created by Sorin Visan on 17/08/2020.
//

import SwiftUI

struct ContentView: View {
    
//    @ObservedObject var ticketView = FirestoreTicketRepository()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }
    
    
    var body: some View {
        DailyView()
//        ForEach(ticketView.tickets) { ticket in
//            VStack{
//                Text("Type: " + String(ticket.type))
//                Text("Ticket Date: " + String(dateFormatter.string(from: ticket.date)))
//                ForEach(ticket.matches) { match in
//                    VStack{
//                        Text("Home: " + String(match.homeTeam))
//                        Text("Away: " + String(match.awayTeam))
////                        Text("Date: " + String(match.date))
//                        Text("Odds: " + String(match.odds))
//                        Text("Tips: " + String(match.tips))
//                        Text("Tips: " + String(match.result))
//                    }
//                }
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
