//
//  transition-view.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/16/23.
//

import SwiftUI

class presentView: ObservableObject {
    
    @Published  var score = 0
    @Published  var scoreView = 0
    
    func addScore() {
        
        score += 1
        
    }
    
    enum availableViews {
        case resources, testScreen, Home, Dash
    }
    
    @Published var currentView: availableViews = .Dash
}

struct TransitionView: View {
    
    @EnvironmentObject var PresentView: presentView
    
    var body: some View {
       
        switch PresentView.currentView{
        case .resources: Resources()
        case .testScreen: test()
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
