//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Ismailov on 26.02.2025.
//

import UIKit

extension UIView {
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
