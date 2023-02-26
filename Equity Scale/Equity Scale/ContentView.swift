//
//  ContentView.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI
import UIKit


struct ContentView: View {
    
    @EnvironmentObject var presentedView: presentView
    
    @State var isShowingInfo = false
    
    
    
    var body: some View {
        ZStack{
            Color("darkBlue")
                .ignoresSafeArea()
            Image("grid2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 388.0, height: 200.0)
                .opacity(100.0)
            VStack {
                Text("Equity Scale")
                    .font(.system(size: 65))
                    .foregroundColor(Color("gold"))
                    .bold()
                    .padding()
                    .offset(x: 0, y: 27)
                Button("Begin Test"){
                    
                    presentedView.currentView = .testScreen
                }
                .padding()
                .font(.system(size: 65))
                .foregroundColor(Color("darkBlue"))
                .background(Color("blue"))
                .cornerRadius(80)
                .overlay(
                    RoundedRectangle(cornerRadius: 80)
                        .stroke(Color("gold"), lineWidth: 5)
                )
                .frame(width: 363, height: 93)
                .offset(x: 0, y: 150)
                
                
                ZStack{
                    Button("i"){
                        
                        isShowingInfo.toggle()
                        
                        
                    }
                    .padding(150)
                    .font(.system(size: 72))
                    .foregroundColor(Color("darkBlue"))
                    .background(
                        Circle()
                        // .strokeBorder(Color("gold"), lineWidth: 5)
                            .fill(Color("blue"))
                            .frame(width: 83, height: 83)
                        
                        
                    )
                    Circle()
                        .strokeBorder(Color("gold"), lineWidth: 5)
                        .frame(width: 83, height: 83)
                }
                .offset(x: 110, y: 200)
                
                Text("\(presentedView.score)")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
            }
            
        }
        .overlay {
            if isShowingInfo == true{
                
                ZStack{
                    Color("darkBlue")
                        .ignoresSafeArea()
                        .opacity(0.8)
                    VStack{
                        Text("Company Mission: Racial justice is a buzzword and commodity in Detroit, resulting in an overabundance of justice-illiterate institutions and leaders that harm and exclude innovative racial justice thinkers and change-makers. Resources are funneled into the same superficial initiatives (80% of nonprofits nationally funded are white led), while Black, Indigenous, and POC communities are denied access to what is owed to us for radical change. n/We commit as Technology Developers to challenge oppressive institutions and structures in Detroit nonprofits by building power for Black, Indigenous, and POC communities for our mutual liberation. We will do this by creating a system to measure inequities in nonprofit leadership and work with foundations & community partners to hold leadership accountable to make necessary changes to move toward a more equitable organization. ")
                        .padding()
                        .font(.system(size: 24))
                        .foregroundColor(Color("darkBlue"))
                        .background(Color("blue"))
                        .cornerRadius(80)
                        .overlay(
                            RoundedRectangle(cornerRadius: 80)
                                .stroke(Color("gold"), lineWidth: 5)
                        )
                        .frame(width: 326, height: 612)
                        .offset(x: 0, y: 150)
                        ZStack{
                            Button(">"){
                                
                                isShowingInfo.toggle()
                                
                                
                            }
                            .padding(150)
                            .font(.system(size: 72))
                            .foregroundColor(Color("darkBlue"))
                            .background(
                                Circle()
                                // .strokeBorder(Color("gold"), lineWidth: 5)
                                    .fill(Color("blue"))
                                    .frame(width: 83, height: 83)
                                    
                                
                            )
                            Circle()
                                    .strokeBorder(Color("gold"), lineWidth: 5)
                                    .frame(width: 83, height: 83)
                        }
                        
                        .offset(x: 110, y: 0)
                    }
                }
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

