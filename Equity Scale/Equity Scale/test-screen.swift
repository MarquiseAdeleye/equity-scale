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

struct test54: View {
    
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
                Text("Of those that are BIPOC how many of them that have children currently or have sent their kids to the schools in the area you serve?")
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
                    .offset(x: 0, y:16)
                
                
                Button("0"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.currentView = .test5
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
                .offset(x: 0, y: 30)
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 2
                    
                    presentedView.currentView = .test5
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
                .offset(x: 0, y: 49)
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    presentedView.score += 5
                    
                    presentedView.currentView = .test5
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
                .offset(x: 0, y:72)
                
                Button("Does not apply"){
                    
                    //  presentedView.currentView = .testScreen
                    presentedView.score += 5
                    
                    presentedView.currentView = .test5
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
                .offset(x: 0, y:93)
                
                Button("Next"){
                    
                
                    presentedView.currentView = .test5
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
                    
                
                    presentedView.currentView = .test3
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

struct test55: View {
    
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
                Text("If you work in a community that serves people that speak a language other than English as a first language, do you have a person that is fluent in that language on the board?")
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
                
                
                Button("Yes"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 5
                    presentedView.currentView = .test14
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
                
                Button("No"){
                    
                    //  presentedView.currentView = .Home
                    
                    
                    
                    presentedView.currentView = .test14
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
                
                Button("We do NOT serve languages other than English"){
                    
                    //  presentedView.currentView = .testScreen
                    presentedView.score += 5
                    
                    presentedView.currentView = .test14
                }
                .padding()
                .frame(width: 363, height: 50)
                .font(.system(size: 15))
                .foregroundColor(Color("darkBlue"))
                .background(Color("blue"))
                .cornerRadius(80)
                .overlay(
                    RoundedRectangle(cornerRadius: 80)
                        .stroke(Color("gold"), lineWidth: 5)
                )
                .offset(x: 0, y:55)
                
                Button("Next"){
                    
                    
                    presentedView.currentView = .test6
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
                    
                    
                    presentedView.currentView = .test4
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
struct test58: View {
    
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
                Text("Of those that are BIPOC how many identify as being apart of the LGBTQ+ community?")
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
                
                
                Button("Yes"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 5
                    presentedView.currentView = .test9
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
        
                
                Button("No"){
                    
                    //  presentedView.currentView = .testScreen
                    
                   
                    presentedView.currentView = .test9
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
                    
                    
                    presentedView.currentView = .test9
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
                    
                    
                    presentedView.currentView = .test7
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


    
    struct testScreen_Previews: PreviewProvider {
        static var previews: some View {
            test55()
        }
    }

