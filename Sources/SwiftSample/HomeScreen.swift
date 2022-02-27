//
//  HomeScreen.swift
//  XTracker
//
//  Created by Vishal Yalla on 2/13/22.
//

import SwiftUI

var name:String = "<name>"

struct HomeScreen: View {
    var body: some View {
        
        ScrollView {
            
            Spacer()
            Spacer()
            Spacer()
            
            
            HStack {
                
                Spacer()
                
                
                Text("Welcome Back,")
                    .font(.largeTitle)
                    .bold()
                    .frame(width: 300, height: 40, alignment: .topLeading)
                    .blur(radius: 0)
                
                
                Spacer()
                
                Image(systemName: "person.crop.circle")
                    .font(Font.system(.largeTitle))
                
                Spacer()
                
            }


            Text(name).font(.largeTitle)
                .bold()
                .frame(width: 350, height: 40, alignment: .topLeading)
                .blur(radius: 0)
            
            Spacer()
            Spacer()
            
            VStack(spacing: 20) {
                
                Text("")
                    .font(.largeTitle)
                    .frame(width: 310, height: 90)
                    .padding(20)
                    .background(
                        RoundedRectangle(
                            cornerRadius:20,
                            style: .continuous)
                    .fill(
                        LinearGradient(colors: [.pink,.blue], startPoint: .leading, endPoint: .trailing)))
                
                
                Text("")
                    .font(.largeTitle)
                    .frame(width: 310, height: 90)
                    .padding(20)
                    .background(
                        RoundedRectangle(
                            cornerRadius:20,
                            style: .continuous)
                    .fill(
                        LinearGradient(colors: [.blue,.green], startPoint: .leading, endPoint: .trailing)))
                
                Text("")
                    .font(.largeTitle)
                    .frame(width: 310, height: 90)
                    .padding(20)
                    .background(
                        RoundedRectangle(
                            cornerRadius:20,
                            style: .continuous)
                    .fill(
                        LinearGradient(colors: [.red,.purple], startPoint: .leading, endPoint: .trailing)))
                
                Text("")
                    .font(.largeTitle)
                    .frame(width: 310, height: 90)
                    .padding(20)
                    .background(
                        RoundedRectangle(
                            cornerRadius:20,
                            style: .continuous)
                    .fill(
                        LinearGradient(colors: [.purple,.green], startPoint: .leading, endPoint: .trailing)))
                
                
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen()
                .previewDevice("iPhone 12")
            HomeScreen()
                .previewDevice("iPhone 8 Plus")
        }
    }
}
