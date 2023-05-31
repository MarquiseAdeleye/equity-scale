//
//  question-ViewModel.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 5/2/23.
//

import Foundation
import SwiftUI

struct Question {
    
    var text: String
    var choices: [Choice]
    var userSelection: Choice?
}

struct Choice {
    
    var text: String
    var points: Int
}

class viewModel: ObservableObject {
    
    
}
