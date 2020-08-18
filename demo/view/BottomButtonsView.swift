//
//  BottomButtonsView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct BottomButtonsView: View {
    
    var body: some View {
        HStack {
            Spacer()
            VStack{
                Button(action: {
                    print("Home button")
                }) {
                    Image(systemName: "house")
                        .font(.system(size: 24))
                        .foregroundColor(Color.white)
                }
                Text("Daily")
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            VStack{
                Button(action: {
                    print("Bubble button")
                }) {
                    Image(systemName: "star")
                        .font(.system(size: 24))
                        .foregroundColor(Color.white)
                }
                Text("VIP")
                    .foregroundColor(Color.white)
            }
            
            Spacer()
            VStack{
                
                Button(action: {
                    print("Rectangle button")
                }) {
                    Image(systemName: "questionmark.circle")
                        .font(.system(size: 24))
                        .foregroundColor(Color.white)
                }
                Text("About")
                    .foregroundColor(Color.white)
            }
            Spacer()
            
            VStack{
            Button(action: {
                print("Search button")
            }) {
                Image(systemName: "message")
                    .font(.system(size: 24))
                    .foregroundColor(Color.white)
            }
                Text("Contact")
                    .foregroundColor(Color.white)
            }
            Spacer()
        }.padding(.horizontal, 44)
    }
}

struct BottomButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        BottomButtonsView()
    }
}
