//
//  Extensions.swift
//  InstagramFirebase
//
//  Created by Brian Voong on 3/18/17.
//  Copyright © 2017 Lets Build That App. All rights reserved.
//

import UIKit



extension UILabel {
    convenience public init(text: String? = nil, font: UIFont? = UIFont.systemFont(ofSize: 14), textColor: UIColor = .black, textAlignment: NSTextAlignment = .left, numberOfLines: Int = 1) {
        self.init()
        self.text = text
        self.font = font
        self.textColor = textColor
        self.textAlignment = textAlignment
        self.numberOfLines = numberOfLines
    }
}

extension UIButton {
    
    convenience public init(title: String, titleColor: UIColor, font: UIFont = .systemFont(ofSize: 14), backgroundColor: UIColor = .clear, target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        
        self.backgroundColor = backgroundColor
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
    }
    
    convenience public init(image: UIImage, tintColor: UIColor? = nil, target: Any? = nil, action: Selector? = nil) {
        self.init(type: .system)
        if tintColor == nil {
            setImage(image, for: .normal)
        } else {
            setImage(image.withRenderingMode(.alwaysTemplate), for: .normal)
            self.tintColor = tintColor
        }
        
        if let action = action {
            addTarget(target, action: action, for: .touchUpInside)
        }
    }
    
}



fileprivate var aView:UIView?
extension UIViewController {
    
    
    

    func showSpinner(){
        aView = UIView(frame: self.view.bounds)
        aView!.backgroundColor  = UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        
        let aIndicator = UIActivityIndicatorView(style: .large)
        aIndicator.center = aView!.center
        aIndicator.startAnimating()
        aView!.addSubview(aIndicator)
        self.view.addSubview(aView!)
        
    }
    
    func stopSpinner(){
        aView?.removeFromSuperview()
        aView = nil
    }
    
    
    func presentAlert(withTitle title: String, message : String) {
      let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
      let OKAction = UIAlertAction(title: "OK", style: .default) { action in
          print("You've pressed OK Button")
      }
      alertController.addAction(OKAction)
      self.present(alertController, animated: true, completion: nil)
    }

}


