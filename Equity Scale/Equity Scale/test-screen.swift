//
//  test-screen.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import Foundation


import SwiftUI
import UIKit

struct Sticky: ViewModifier {
    @State var frame: CGRect = .zero
   
    var isSticking: Bool {
        frame.minY < 0
    }
    func body(content: Content) -> some View {
        content
            .offset(y: isSticking ? -frame.minY: -125)
            .overlay(GeometryReader {
               
            
                proxy in
                let f = proxy.frame(in: .named("container"))
               /*
                f.minY < 0 ? Color.red : .green
                */
                Color.clear
                    .onAppear { frame = f }
                    .onChange(of: f){ frame = $0}
            })
            
    }
}
extension View{
    func sticky() -> some View{
        modifier(Sticky())
    }
}

struct testScreen: View {
    
    @EnvironmentObject var presentedView: presentView
    @State var score = 0
    
    var body: some View {
        
        ZStack{
        

                
                
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
                .sticky()
                .offset(x: 135, y: 0
                )
                
                
                ZStack {
                    /*
                     Color("darkBlue")
                     .ignoresSafeArea()
                     
                     Image("grid")
                     .resizable()
                     .aspectRatio(contentMode: .fill)
                     .frame(width: 388.0, height: 9094)
                     */
                    VStack {
                        ZStack{
                            Text("Placeholder")
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
                            Button{
                            
                            }label: {
                            Text("place")
                                    .padding()
                                    .font(.system(size: 15))
                                    .foregroundColor(Color("gold"))
                                    .background(Color("darkBlue"))
                                    .cornerRadius(100)
                                    .overlay(
                                    RoundedRectangle(cornerRadius: 100)
                                    .stroke(Color("blue"), lineWidth: 3)
                                    )
                                    .offset(x: 0, y: 50)
                            }
                            .frame(width: 367.0, height: 50.0)
                        }
                        
                        /*
                         Button("Begin Test"){
                         
                         }
                         .padding()
                         .font(.system(size: 65))
                         .foregroundColor(Color("darkBlue"))
                         .background(Color("gold"))
                         .cornerRadius(80)
                         .overlay(
                         RoundedRectangle(cornerRadius: 80)
                         .stroke(Color("blue"), lineWidth: 5)
                         )
                         .frame(width: 363, height: 93)
                         .offset(x: 0, y: 150)
                         
                         Button("Begin Test"){
                         
                         }
                         .padding()
                         .font(.system(size: 65))
                         .foregroundColor(Color("darkBlue"))
                         .background(Color("gold"))
                         .cornerRadius(80)
                         .overlay(
                         RoundedRectangle(cornerRadius: 80)
                         .stroke(Color("blue"), lineWidth: 5)
                         )
                         .frame(width: 363, height: 93)
                         .offset(x: 0, y: 150)
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
                         }
                         */
                    }
                    
                }
                Image("grid")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:500.0, height: 9100)
                    .coordinateSpace(name: "container")
                    .frame(width: 390, height: 9094)
                    .offset(x: 22, y:-230)
                
                
            }
            .background(Color("darkBlue"))
            
        }
    
    
    struct testScreen_Previews: PreviewProvider {
        static var previews: some View {
            testScreen()
        }
    }
}
