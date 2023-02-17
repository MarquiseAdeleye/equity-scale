//
//  transition-view.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/16/23.
//

import SwiftUI

class presentView: ObservableObject {
    enum availableViews {
        case resources, testScreen, Home, Dash
    }
    
    @Published var currentView: availableViews = .Home
}

struct TransitionView: View {
    
    @EnvironmentObject var PresentView: presentView
    
    var body: some View {
       
        switch PresentView.currentView{
        case .resources: Resources()
        case .testScreen: testScreen()
        case .Home: ContentView()
        case .Dash: Dashboard()
        }
        
    }
    
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
