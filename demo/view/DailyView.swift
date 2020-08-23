//
//  DailyView.swift
//  demo
//
//  Created by Sorin Visan on 18/08/2020.
//

import SwiftUI

struct DailyView: View {
    
    @State var showMenu = false
    
    var body: some View {
        
        let drag = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        
        return NavigationView {
            GeometryReader { geometry in
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    if self.showMenu {
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(drag)
            }
            .navigationBarTitle("Daily Matches", displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
            ))
        }
    }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        //        DailyView()
        Menu(open: .constant(true))
    }
}










//Aproach 1



struct Menu : View {
    @Binding var open : Bool
    
    var body : some View {
        VStack{
            HStack{
                
                ZStack {
                    Image(systemName: "dollarsign.square")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 60, height: 60)
                        .padding(.horizontal, 24)
                    
                    Circle()
                        .stroke(Color("Purple"))
                        .frame(width: 70, height: 70)
                        .offset(x: -2, y: -1)
                    
                }
                
                
            }
            .padding(.top, 20)
            
            Text("Winners Academy")
                .foregroundColor(.white)
                .font(.system(size: 20, weight: .semibold))
                .padding(.top, 10)
                .padding(.bottom, 40)
            
            Row(rowActive: true, icon: "house", text : "Daily Matches")
            Row(rowActive: false, icon: "star", text : "VIP Matches")
            Row(rowActive: false, icon: "house", text : "hello")
            Row(rowActive: false, icon: "house", text : "hello")
            Row(rowActive: false, icon: "house", text : "hello")
            
            Spacer()
            
            Row(rowActive: false, icon: "arrow.uturn.left", text : "Sign out")
        }
        .padding(.vertical, 30)
        .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom))
        .padding(.trailing, 80)
        .offset(x: open ? 0 : -UIScreen.main.bounds.width)
        .rotation3DEffect(Angle(degrees: open ? 0 : 45), axis: (x: 0, y: 20, z: 0))
        .animation(.default)
        .edgesIgnoringSafeArea(.vertical)
    }
}


struct MainView: View {
    
    @Binding var showMenu: Bool
    
    var body: some View {
        
        return ZStack {
            
            LinearGradient(gradient: Gradient(colors: [
                                                Color.blue,
                                                Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)

            VStack {
                
                TitleAndViewImage()
                
                Spacer()
                
                CardsStackView()
                Spacer()
                
                PercentView()
                Spacer()
                
//                BottomButtonsView()
            }.padding(.top, 44)
            
        }
    }
    
    
    
}




struct Row : View {
    
    var rowActive : Bool
    var icon = "house"
    var text = "Dashboard"
    
    var body: some View{
        HStack{
            Image(systemName: icon)
                .foregroundColor(rowActive ? Color.purple :  .white)
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
                .frame(width: 48, height: 32)
            Text(text)
                .foregroundColor(rowActive ? Color.purple :  .white)
                .font(.system(size: 15, weight: rowActive ? .bold : .regular))
            
            Spacer()
        }
        .padding(4)
        .background(rowActive ? Color.white : Color.white.opacity(0))
        .padding(.trailing, 20)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .offset(x : 20)
    }
    
}
