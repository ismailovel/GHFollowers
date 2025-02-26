//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Ismailov on 26.02.2025.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
