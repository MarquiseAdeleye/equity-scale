//
//  Equity_ScaleApp.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/7/23.
//

import SwiftUI

@main
struct Equity_ScaleApp: App {
    @StateObject var PresentView = presentView()
    
    var body: some Scene {

        WindowGroup {
           // ContentView()
            TransitionView()
                .environmentObject(PresentView)
        }
        
    }
}
