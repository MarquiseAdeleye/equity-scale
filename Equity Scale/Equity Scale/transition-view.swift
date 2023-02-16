//
//  transition-view.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/16/23.
//

import SwiftUI

class presentView: ObservableObject {
    enum availableViews {
        case resources, testScreen, home, dash
    }
    
    @Published var currentView: availableViews = .resources
}

struct TransitionView: View {
    
    @EnvironmentObject var PresentView: presentView
    
    var body: some View {
       
        switch PresentView.currentView{
        case .resources: Resources()
        case .testScreen: testScreen()
        case .home: ContentView()
        case .dash: Dashboard()
        }
        
    }
    
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
