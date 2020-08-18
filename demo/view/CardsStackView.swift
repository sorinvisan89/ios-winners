//
//  CardsStackView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct CardsStackView: View {
    
    @ObservedObject var ticketView = FirestoreTicketRepository()
    
    
    var body: some View {
        HStack {
//                        Rectangle()
//                            .foregroundColor(Color.white)
//                            .cornerRadius(28)
//                            .opacity(0.4)
//                            .offset(x: 0, y: 108)
//                            .frame(width: 290, height: 280)
    
            
            ScrollView(showsIndicators : true) {
//                List {
//                ForEach(ticketView.tickets) { ticket in
                ForEach(Array(ticketView.tickets.enumerated()), id: \.offset) { index, ticket in
                    VStack{
                        
                        HStack{
                            Spacer()
                        }
                        CardView(ticket: .constant(ticket),
                                 imageIndex: .constant(index))
                            .padding()
                        
                    }
                }.padding(.bottom)
                .padding(.horizontal, 44)
            }
            
        }
    }
    
    
    
}



struct CardsStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardsStackView()
    }
}
