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
                        
                        presentedView.currentView = .test2
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
                        
                        presentedView.score += 4
                        
                        presentedView.currentView = .test2
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
                        
                        presentedView.score += 5
                        presentedView.currentView = .test2
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
                        
                        
                        presentedView.currentView = .test2
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
                        presentedView.currentView = .Home
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
    

struct test2: View {
    
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
                Text("Of those BIPOC how many currently live in the direct community you service for over 10 years?")
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
                    
                
                    
                    presentedView.currentView = .test3
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
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test3
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
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test3
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
                .offset(x: 100, y: 108)
        
                Button("Previous"){
                    
                    presentedView.currentView = .testScreen
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


struct test3: View {
    
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
                Text("Of those that are BIPOC how many have attended School in the direct community you serve?")
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
                    
                
                    
                    presentedView.currentView = .test4
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
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test4
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
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test4
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
                .offset(x: 100, y: 108)
                
                Button("Previous"){
                    
                    presentedView.currentView = .test2
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


struct test4: View {
    
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


struct test5: View {
    
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
                Text("Of those that are BIPOC how many had/have parents that lived or live in the area you serve?")
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
                
                
                Button("0"){
                    
                    //  presentedView.currentView = .Home
                    
                    
                    presentedView.currentView = .test6
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test6
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
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.score += 5
                    presentedView.currentView = .test6
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

struct test6: View {
    
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
                Text("Of those that are BIPOC how many generations are represented? (Silent Generation, Boomer, X, Millennial, Z)")
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
                    
                    presentedView.currentView = .test7
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
                
                Button("1"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 2
                    
                    presentedView.currentView = .test7
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
                
                Button("2"){
                    
                    //  presentedView.currentView = .testScreen
                    presentedView.score += 4
                    
                    presentedView.currentView = .test7
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
                
                Button("3+"){
                    
                    //  presentedView.currentView = .testScreen
                    presentedView.score += 5
                    
                    presentedView.currentView = .test7
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
                .offset(x: 100, y: 108)
                
                Button("Previous"){
                    
                
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

struct test7: View {
    
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
                Text("Of those that are BIPOC how many have a disability?")
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
                
                
                Button("0"){
                    
                    //  presentedView.currentView = .Home
                    
                    
                    presentedView.currentView = .test8
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test8
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
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.score += 5
                    presentedView.currentView = .test8
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
                    
                    
                    presentedView.currentView = .test8
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


struct test8: View {
    
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
                
                
                Button("0"){
                    
                    //  presentedView.currentView = .Home
                    
                    
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
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
                .offset(x: 0, y: 35)
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    
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



struct test9: View {
    
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
                Text("Is the board chair a BIPOC?")
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
                    presentedView.currentView = .test10
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
                    
                   
                    presentedView.currentView = .test10
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
                    
                    
                    presentedView.currentView = .test10
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
                    
                    
                    presentedView.currentView = .test8
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

struct test10: View {
    
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
                Text("Do you have a way for the community to contact you for concerns around the ED of the non profit?")
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
                    presentedView.currentView = .test11
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
                    
                   
                    presentedView.currentView = .test11
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
                    
                    
                    presentedView.currentView = .test11
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

struct test11: View {
    
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
                Text("Does your board have term limits in the bylaws")
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
                    presentedView.currentView = .test12
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
                    
                   
                    presentedView.currentView = .test12
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
                    
                    
                    presentedView.currentView = .test12
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
                    
                    
                    presentedView.currentView = .test10
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

struct test12: View {
    
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
                Text("Does your ED have a term limit explicitly stated in your bylaws")
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
                    presentedView.currentView = .test13
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
                    
                   
                    presentedView.currentView = .test13
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
                    
                    
                    presentedView.currentView = .test13
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
                    
                    
                    presentedView.currentView = .test11
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


struct test13: View {
    
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
                    
                    
                    presentedView.currentView = .test14
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
                    
                    
                    presentedView.currentView = .test12
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

struct test14: View {
    
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
                Text("Does your organization prioritize hiring BIPOC small businesses as vendors 80% of the time?")
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
                    presentedView.currentView = .test15
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
                    
            
                    
                    presentedView.currentView = .test15
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
                
                Button("I don't know"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.currentView = .test15
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
                    
                    
                    presentedView.currentView = .test15
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
                    
                    
                    presentedView.currentView = .test13
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

struct test15: View {
    
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
                Text("Do your bylaws specifically address equity as a requirement?")
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
                    presentedView.currentView = .test16
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
                    
            
                    
                    presentedView.currentView = .test16
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
                
                Button("I don't know"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.currentView = .test16
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
                    
                    
                    presentedView.currentView = .test16
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
                    
                    
                    presentedView.currentView = .test14
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


struct test16: View {
    
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
                Text("How many of your board members identify as  BIPOC gender other than male?")
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
                
                
                Button("0 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    
                    
                    presentedView.currentView = .test17
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test17
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
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test17
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
                    
                   
                    presentedView.currentView = .test17
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
                    presentedView.currentView = .test17
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

struct test17: View {
    
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
                Text("How many of your board members have ever received public assistance in their lives?")
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
                
                
                Button("0 %"){
                    
                    //  presentedView.currentView = .Home
                    
                  
                    
                    presentedView.currentView = .test18
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test18
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
                
                Button("51 - 100%"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test18
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
                    
                    
                    presentedView.currentView = .test18
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
                    
                   
                    presentedView.currentView = .test16
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

struct test18: View {
    
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
                Text("Do you have board members that make the same or less than the median income of the community you serve?")
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
                
                
                Button("0 %"){
                    
                    //  presentedView.currentView = .Home
                    
                   
                    
                    presentedView.currentView = .test19
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
                
                Button("1 - 50 %"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 4
                    
                    presentedView.currentView = .test19
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
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test19
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
                    
                    presentedView.currentView = .test19
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
                    
                    
                    presentedView.currentView = .test17
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

struct test19: View {
    
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
                Text("Have you specifically made policies in your bylaws for the board to promote inclusion? (Zoom meeting options, hours that work for people that have 9-5 jobs, childcare options for meeting days, translation are a few examples)")
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
                    
                    presentedView.currentView = .test20
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
                    
                    
                    presentedView.currentView = .test20
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
                
                Button("I don't know"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.currentView = .test20
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
                    
                  
                    presentedView.currentView = .test20
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
                    
                   
                    presentedView.currentView = .test20
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

struct test20: View {
    
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
                Text("If you serve youth, do you have a youth 13-24 on your board?")
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
                
                
                Button("No"){
                    
                    //  presentedView.currentView = .Home
                    
               
                    
                    presentedView.currentView = .test21
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
                
                Button("Yes"){
                    
                    //  presentedView.currentView = .Home
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test21
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
                
                Button("Does not apply"){
                    
                    //  presentedView.currentView = .testScreen
                    
                    presentedView.score += 5
                    
                    presentedView.currentView = .test21
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
                    
                    
                    presentedView.currentView = .test21
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
                    
                  
                    presentedView.currentView = .test19
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


struct test21: View {
    
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
                    presentedView.currentView = .Dash
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
                    
                   
                    presentedView.currentView = .Dash
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
                    
                    
                    presentedView.currentView = .test20
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
        test2()
    }
}

