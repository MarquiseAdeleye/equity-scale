//
//  info-page.swift
//  Equity Scale
//
//  Created by Marquise Adeleye on 2/9/23.
//

import Foundation
import UIKit
import SwiftUI

//Initializing the view to create a black background for the info popup window
private class infoPopUp: UIView {
    
    let popupView = UIView(frame: CGRect.zero)
    let popupTitle = UILabel(frame: CGRect.zero)
    let popupText = UILabel(frame: CGRect.zero)
    let popupButton = UIButton(frame: CGRect.zero)
    
    let BorderWidth: CGFloat = 2.0
    
    init(){
        
        super.init(frame: CGRect.zero)
        // Semi-transparent background
        backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        // Popup Background
        popupView.backgroundColor = UIColor.blue
        popupView.layer.borderWidth = BorderWidth
        popupView.layer.masksToBounds = true
        popupView.layer.borderColor = UIColor.white.cgColor
        
        // Popup Title
        popupTitle.textColor = UIColor.white
        popupTitle.backgroundColor = UIColor.yellow
        popupTitle.layer.masksToBounds = true
        popupTitle.adjustsFontSizeToFitWidth = true
        popupTitle.clipsToBounds = true
        popupTitle.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
        popupTitle.numberOfLines = 1
        popupTitle.textAlignment = .center
        
        // Popup Text
        popupText.textColor = UIColor.white
        popupText.font = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
        popupText.numberOfLines = 0
        popupText.textAlignment = .center
        // Popup Button
        popupButton.setTitleColor(UIColor.white, for: .normal)
        popupButton.titleLabel?.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
        popupButton.backgroundColor = UIColor.yellow
        
        popupView.addSubview(popupTitle)
        popupView.addSubview(popupText)
        popupView.addSubview(popupButton)
        
        // Add the popupView(box) in the PopUpWindowView (semi-transparent background)
        addSubview(popupView)
        
        
        // PopupView constraints
        popupView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupView.widthAnchor.constraint(equalToConstant: 293),
            popupView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            popupView.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        // PopupTitle constraints
        popupTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupTitle.leadingAnchor.constraint(equalTo: popupView.leadingAnchor, constant: BorderWidth),
            popupTitle.trailingAnchor.constraint(equalTo: popupView.trailingAnchor, constant: -BorderWidth),
            popupTitle.topAnchor.constraint(equalTo: popupView.topAnchor, constant: BorderWidth),
            popupTitle.heightAnchor.constraint(equalToConstant: 55)
        ])
        
    }
    required init?( coder aDecoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
}


class PopUpWindow: UIViewController {
    
    private let popUpWindowView = infoPopUp()
    
    init(title: String, text: String, buttontext: String) {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .crossDissolve
        modalPresentationStyle = .overFullScreen
        
        popUpWindowView.popupButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
        
        popUpWindowView.popupTitle.text = title
        popUpWindowView.popupText.text = text
        popUpWindowView.popupButton.setTitle(buttontext, for: .normal)
        

        view = popUpWindowView
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func dismissView(){
        self.dismiss(animated: true, completion: nil)
        
    }
}
