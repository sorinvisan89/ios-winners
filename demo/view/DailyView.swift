//
//  DailyView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct DailyView: View {
    
    
    var body: some View {
        return ZStack {
            LinearGradient(gradient: Gradient(colors: [
                                                Color.blue,
                                                Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
//                HStack{
//                    Spacer()
//                    TitleAndViewImage()
//                    Image(systemName: "dollarsign.square")
//                        .font(.system(size: 72))
//                                          .foregroundColor(Color.white)
//                    Spacer()
//                }
//                .padding(.trailing, 50.0)
                
                TitleAndViewImage()
       
                Spacer()
                
                CardsStackView()
                Spacer()
                
                PercentView()
                Spacer()
                
                BottomButtonsView()
            }.padding(.top, 44)
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        DailyView()
    }
}
