//
//  ContentView.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI
import UIKit


struct ContentView: View {
    
  //  @EnvironmentObject var presentedView: presentView
    
    var body: some View {
        ZStack {
            Color("gold")
                .ignoresSafeArea()
            Image("grid2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 388.0, height: 200.0)
                .opacity(100.0)
            VStack {
                Text("Equity Scale")
                    .font(.system(size: 65))
                    .foregroundColor(Color("darkBlue"))
                    .bold()
                    .padding()
                    .offset(x: 0, y: 27)
                Button("Begin Test"){
                    
                }
                .padding()
                .font(.system(size: 65))
                .foregroundColor(Color("darkBlue"))
                .background(Color("blue"))
                .cornerRadius(80)
                .overlay(
                    RoundedRectangle(cornerRadius: 80)
                        .stroke(Color("darkBlue"), lineWidth: 5)
                )
                .frame(width: 363, height: 93)
                .offset(x: 0, y: 150)
                
                /*
                Button("i"){
                    //  var popUpWindow: PopUpWindow!
                    // popUpWindow = PopUpWindow(title: "Error", text: "Sorry, that email address is already used!", buttontext: "OK")
                    //  self.present(popUpWindow, animated: true, completion: true)
                }
                .padding(150)
                .font(.system(size: 72
                             ))
                .foregroundColor(Color("darkBlue"))
                .background(
                    Circle()
                        .fill(Color("blue"))
                        .frame(width: 83, height: 101))
                .offset(x: 110, y: 200)
                 
                 */
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
