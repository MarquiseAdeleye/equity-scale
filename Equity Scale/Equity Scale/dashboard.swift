//
//  dashboard.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI
import UIKit

struct Dashboard: View {
    
   // @EnvironmentObject var presentedView: presentView
    
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
                
                
                
                Text("1 Michigan for the Global Majority: \n info@1michigan.org \n Wisdow Institute: \n gwen@thewisdominstitute.org \n Community Connections of Detroit: \n lisa@communityconnectionsofdetroit.org")
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
                
                
                Button("i"){
                    
                }
                .padding(150)
                .font(.system(size: 50
                             ))
                .foregroundColor(Color("darkBlue"))
                .background(
                    Circle()
                        .fill(Color("blue"))
                        .frame(width: 50, height: 50))
                .offset(x: 140, y: -560)
                
            }
        }
    }
    
    
    
    struct Dashboard_Previews: PreviewProvider {
        static var previews: some View {
            Dashboard()
        }
    }
    
}
