//
//  PercentView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct PercentView: View {
    var body: some View {
        HStack {
            Spacer()
            ZStack {
                Capsule()
                    .foregroundColor(Color.white)
                    .opacity(0.8)
                    .frame(width: 120, height: 4, alignment: .leading)
                    .cornerRadius(120)
                
                Capsule()
                    .foregroundColor(Color.white)
                    .frame(width: 60, height: 8, alignment: .leading)
                    .cornerRadius(12)
                    .padding(.trailing, 80)
            }
            
            Text("01 / 05")
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            
            Spacer()
        }.padding(.horizontal, 28)
    }
}

struct PercentView_Previews: PreviewProvider {
    static var previews: some View {
        PercentView()
    }
}
