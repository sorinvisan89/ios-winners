//
//  MenuView.swift
//  demo
//
//  Created by Sorin Visan on 20/08/2020.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                NavigationLink(destination: DailyView()) {
                Image(systemName: "person")
                    .foregroundColor(.purple)
                    .imageScale(.large)
                Text("Daily Matches")
                    .foregroundColor(.purple)
                    .font(.headline)
                }
            }
            .padding(.top, 100)
            
            HStack {

                Image(systemName: "envelope")
                    .foregroundColor(.purple)
                    .imageScale(.large)
                Text("VIP Matches")
                    .foregroundColor(.purple)
                    .font(.headline)
            }
            .padding(.top, 30)

            HStack {
                NavigationLink(destination: ContactView()) {
                Image(systemName: "envelope")
                    .foregroundColor(.purple)
                    .imageScale(.large)
                Text("Contact Us")
                    .foregroundColor(.purple)
                    .font(.headline)
                }
            }
            .padding(.top, 30)
            
            HStack {
                NavigationLink(destination: AboutView()) {
                    Image(systemName: "questionmark.circle")
                        .foregroundColor(.purple)
                        .imageScale(.large)
                    Text("About")
                        .foregroundColor(.purple)
                        .font(.headline)
                }
            }
            .padding(.top, 30)
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        //        .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .top, endPoint: .bottom))
        .background(Color.white)
//        .animation(.default)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
