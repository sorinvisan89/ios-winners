//
//  CardView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct CardView: View {
    
    @Binding var ticket: Ticket
    
    @Binding var imageIndex : Int
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }
    
    
    var body: some View {
        VStack(alignment: .center) {
            Image(Utility().getNameFromIndex(index: imageIndex))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 180)
                .clipped()
                .cornerRadius(12)
            
            VStack {
                Text("Date: " + self.dateFormatter.string(from: ticket.date))
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.bottom)
                
                Text(ticket.type + " @ " + String(MathUtils.roundToPlaces(number: ticket.totalOdds, places : 2)))
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.purple)
                    .padding(.bottom)
                
                
                ScrollView(showsIndicators : true) {
                    ForEach(Array(ticket.matches.enumerated()), id: \.offset) { index, match in
//                        VStack{
                            
//                            HStack{
//                                Spacer()
                        Divider()
                        Text(match.homeTeam + " - " + match.awayTeam)
//                            .padding()
                                
                        Text("Tips: " + match.tips)
                                    .padding()
//                                Spacer()
//                            }
                            
//                        }
//                        Divider()
                    }.padding(.bottom)
                    .padding(.horizontal, 44)
                }
                
                
                
                
//                Text("Let's buy this ticket")
//                    .font(.body)
//                    .lineLimit(2)
//                    .multilineTextAlignment(.center)
            }.padding()
            
            Button(action: {
                print("Tap tap tap...")
            }) {
                Text("Unlock VIP!")
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.purple)
                    //                    .background(Color(red: 1.0, green: 0.6, blue: 0, opacity: 0.6))
                    .cornerRadius(12)
            }.padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(28)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(ticket: .constant(Ticket(id: "abc", type: "FREE", date: Date(), matches: [Match]())), imageIndex: .constant(1))
    }
}


