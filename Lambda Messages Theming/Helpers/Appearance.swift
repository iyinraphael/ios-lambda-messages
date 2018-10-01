//
//  Appearance.swift
//  Lambda Messages Theming
//
//  Created by Iyin Raphael on 10/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

enum Appearance {
    
    static var lambdaRed = UIColor(red: 212.0/255.0, green: 87.0/255.0, blue: 80.0/255.0, alpha: 1.0)
    static var backgroundGray = UIColor(red: 45.0/255.0, green: 45.0/255.0, blue: 45.0/255.0, alpha: 1.0)
    
    static func setDarkApperance(){
        UINavigationBar.appearance().barTintColor = backgroundGray
        let attributes =  [NSAttributedString.Key.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = attributes
        UINavigationBar.appearance().largeTitleTextAttributes = attributes
        
        UIBarButtonItem.appearance().tintColor = lambdaRed
        UILabel.appearance().textColor = UIColor.white
        
        //tintColor changes the cursors
        UITextField.appearance().tintColor = lambdaRed
        UITextView.appearance().tintColor = lambdaRed
        
        UITextField.appearance().keyboardAppearance = .dark
        
        UISegmentedControl.appearance().tintColor = lambdaRed
        
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        guard let font = UIFont(name: "RM Typerighter medium", size: pointSize) else {
            fatalError("The font wasn't found. Check the name of the font")}
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: font)
        }

    
    static func style(button: UIButton) {
        button.titleLabel?.font = Appearance.applicationFont(with: .callout, pointSize: 30)
        
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = lambdaRed
        
        button.layer.cornerRadius = 8
    }
    
}
