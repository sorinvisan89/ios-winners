//
//  TitleAndViewImage.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct TitleAndViewImage: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                HStack{
                    Spacer()
                    Text("Winners Academy")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    Spacer()
                }
                HStack{
                    Spacer()
                    Text("Let's win today!")
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    Spacer()
                }
//                HStack{
//                    Spacer()
//                    Image(systemName: "dollarsign.square")
//                        .font(.system(size: 72))
//                        .foregroundColor(Color.white)
//                    Spacer()
//                }.padding(.top, 7)
            }
        }
        .padding(.horizontal)
    }
}

struct TitleAndViewImage_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndViewImage()
    }
}
