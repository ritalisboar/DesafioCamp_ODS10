//
//  ConfigureStoryboard.swift
//  DesafioCamp_ODS10
//
//  Created by Rita Lisboa on 16/04/22.
//

import UIKit

@IBDesignable extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return layer.cornerRadius }
        set {
              layer.cornerRadius = newValue

              // If masksToBounds is true, subviews will be
              // clipped to the rounded corners.
              layer.masksToBounds = (newValue > 0)
        }
    }
}

@IBDesignable extension UIView {
    @IBInspectable var borderColor: UIColor? {
        get {
            guard let cgColor = layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.borderColor = newValue?.cgColor }
    }

    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
}
