//
//  ContentView.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI

struct ContentView: View {
var body: some View {
    ZStack {
        Color("darkBlue")
            .ignoresSafeArea()
        Image("grid")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 388.0, height: 200.0)
        VStack {
        Text("Equity Scale")
            .font(.system(size: 65))
            .foregroundColor(Color("blue"))
            .bold()
            .padding()
            .offset(x: 0, y: -39)
        Text("Begin Test")
            .padding()
            .font(.system(size: 65))
            .foregroundColor(Color("darkBlue"))
            .background(
                RoundedRectangle(
                    
                    cornerRadius: 20,
                    style: .continuous
                )
                .fill(Color("gold"))
                .frame(width: 342, height: 342)
            )
            .offset(x: 0, y: 150)
        Text("i")
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
    }
}
    
}

struct ContentView_Previews: PreviewProvider {
static var previews: some View {
ContentView()
}
}