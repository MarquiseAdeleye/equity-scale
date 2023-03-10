//
//  dashboard.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI
import UIKit

struct Dashboard: View {
    
    @EnvironmentObject var presentedView: presentView
    
    @State var isShowingInfo = false
    
    
    var body: some View {
        ZStack {
            Color("darkBlue")
                .ignoresSafeArea()
            Image("grid2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 388.0, height: 200.0)
            
            VStack {
                Text("Equity Scale")
                    .font(.system(size: 55))
                    .foregroundColor(Color("blue"))
                    .bold()
                    .padding()
                    .offset(x: -26, y: 50)
                
                
                
                Text("\(round((presentedView.score / 105) * 100).formatted(.number.precision(.fractionLength(0)))) %")
                    .padding()
                    .frame(width: 363, height: 93)
                    .font(.system(size: 18))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("gold"))
                    .cornerRadius(80)
                    .background(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("blue"), lineWidth: 10)
                    )
                    .offset(x: 0, y: 100)
                
                Button("Revisit Test"){
                    
                    presentedView.currentView = .testScreen
                }
                .padding()
                .frame(width: 363, height: 93)
                .font(.system(size: 18))
                .foregroundColor(Color("darkBlue"))
                .background(Color("gold"))
                .cornerRadius(80)
                .background(
                    RoundedRectangle(cornerRadius: 80)
                        .stroke(Color("blue"), lineWidth: 10)
                )
                .offset(x: 0, y: 150)
                
                
                Button("Resources"){
                    
                    //Making the call that causes this button to go to the resources page
                    
                    presentedView.currentView = .resources
                }
                .padding()
                .frame(width: 363, height: 93)
                .font(.system(size: 18))
                .foregroundColor(Color("darkBlue"))
                .background(Color("gold"))
                .cornerRadius(80)
                .background(
                    RoundedRectangle(cornerRadius: 80)
                        .stroke(Color("blue"), lineWidth: 10)
                )
                .offset(x: 0, y: 200)
                .onTapGesture {
                    presentedView.currentView = .resources
                }
                
                ZStack{
                    Button("i"){
                        
                            isShowingInfo.toggle()
                        
                        
                    }
                    .padding(150)
                    .font(.system(size: 30))
                    .foregroundColor(Color("darkBlue"))
                    .background(
                        Circle()
                        // .strokeBorder(Color("gold"), lineWidth: 5)
                            .fill(Color("blue"))
                            .frame(width: 46, height: 46)
                        
                        
                    )
                    Circle()
                        .strokeBorder(Color("gold"), lineWidth:3)
                        .frame(width: 46, height: 46)
                }
                .offset(x: 135, y: -563)
                
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
                    struct Dashboard_Previews: PreviewProvider {
                        static var previews: some View {
                            Dashboard()
                        }
                    }
                    

