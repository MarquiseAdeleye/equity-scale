//
//  transition-view.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/16/23.
//

import SwiftUI

class presentView: ObservableObject {
    
    @Published  var score = 0.0
    @Published  var scoreValue = 0
    
    func addScore() {
        
        score += 1
        
    }
    
    enum availableViews {
        case resources, testScreen, Home, Dash, test2, test3, test4, test5, test6, test7, test8, test9, test10, test11, test12, test13, test14, test15, test16, test17, test18, test19, test20, test21
    }
    
    @Published var currentView: availableViews = .Home
}

struct TransitionView: View {
    
    @EnvironmentObject var PresentView: presentView
    
    var body: some View {
       
        switch PresentView.currentView{
        case .resources: Resources()
        case .testScreen: test()
        case .Home: ContentView()
        case .Dash: Dashboard()
        case .test2: test2()
        case .test3: test3()
        case .test4: test4()
        case .test5: test5()
        case .test6: test6()
        case .test7: test7()
        case .test8: test8()
        case .test9: test9()
        case .test10: test10()
        case .test11: test11()
        case .test12: test12()
        case .test13: test13()
        case .test14: test14()
        case .test15: test15()
        case .test16: test16()
        case .test17: test17()
        case .test18: test18()
        case .test19: test19()
        case .test20: test20()
        case .test21: test21()
        }
        
    }
    
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
