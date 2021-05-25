//
//  IndentedTextField.swift
//  iOSTest
//
//  Created by Fuad Hasan on 25/5/21.
//

import UIKit

open class IndentedTextField: UITextField {
    
    let padding: CGFloat
    
    public init(placeholder: String? = nil, padding: CGFloat = 0, cornerRadius: CGFloat = 0, keyboardType: UIKeyboardType = .default, backgroundColor: UIColor = .clear, isSecureTextEntry: Bool = false) {
        self.padding = padding
        super.init(frame: .zero)
        self.placeholder = placeholder
        layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.keyboardType = keyboardType
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: padding, dy: 0)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
