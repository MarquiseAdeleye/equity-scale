//
//  test.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/20/23.
//

import Foundation
import SwiftUI


    struct test: View {
        
        
        
        @EnvironmentObject var presentedView: presentView
        
        var body: some View {
            
            
            ZStack{
                Color("darkBlue")
                    .ignoresSafeArea()
                Image("grid2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 388.0, height: 200.0)
                    .opacity(100.0)
                ZStack{
                    Button("i"){
                        
                        //   isShowingInfo.toggle()
                        
                        
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
                .offset(x: 120, y:-359)
                
                VStack {
                    Text("How many BIPOC are on your board?")
                        .fontWeight(.bold)
                        .padding()
                        .frame(width: 342, height: 342)
                        .font(.system(size: 18))
                        .foregroundColor(Color("darkBlue"))
                        .background(Color("gold"))
                        .cornerRadius(80)
                        .background(
                            RoundedRectangle(cornerRadius: 80)
                                .stroke(Color("blue"), lineWidth: 10)
                        )
                        .offset(x: 0, y:-5)
                    
                    
                    Button("0-49%"){
                        
                        //  presentedView.currentView = .Home
                        
                        presentedView.addScore()
                        
                        presentedView.currentView = .Home
                    }
                    .padding()
                    .frame(width: 363, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("blue"))
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("gold"), lineWidth: 5)
                    )
                    .offset(x: 0, y: 15)
                    
                    Button("50 - 90 %"){
                        
                        //  presentedView.currentView = .Home
                        
                        presentedView.addScore()
                        
                        presentedView.currentView = .Home
                    }
                    .padding()
                    .frame(width: 363, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("blue"))
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("gold"), lineWidth: 5)
                    )
                    .offset(x: 0, y: 35)
                    
                    Button("91 - 100%"){
                        
                        //  presentedView.currentView = .testScreen
                        
                        presentedView.addScore()
                    }
                    .padding()
                    .frame(width: 363, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("blue"))
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("gold"), lineWidth: 5)
                    )
                    .offset(x: 0, y:55)
                    
                    Button("Next"){
                        
                        presentedView.score = 0
                        presentedView.currentView = .Dash
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("blue"))
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("gold"), lineWidth: 5)
                    )
                    .offset(x: 100, y: 108)
                    
                    Button("Previous"){
                        
                        presentedView.score = 0
                        presentedView.currentView = .Dash
                    }
                    .padding()
                    .frame(width: 150, height: 50)
                    .font(.system(size: 20))
                    .foregroundColor(Color("darkBlue"))
                    .background(Color("blue"))
                    .cornerRadius(80)
                    .overlay(
                        RoundedRectangle(cornerRadius: 80)
                            .stroke(Color("gold"), lineWidth: 5)
                    )
                    .offset(x: -100, y: 50)
                    /*
                    Text("\(presentedView.score)")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                    */
                    
                }
            }
        }
    }
    











struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}

