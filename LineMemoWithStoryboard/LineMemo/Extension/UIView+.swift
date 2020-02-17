//
//  UIView++.swift
//  LineMemo
//
//  Created by MinKyeongTae on 2020/02/10.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import UIKit

extension UIView {
    func configureBasicBorder() {
        clipsToBounds = true
        layer.borderWidth = ViewSize.BorderWidth.basic
        layer.cornerRadius = ViewSize.CornerRadius.basic
        UIView.animate(withDuration: 0.3, animations: {
            self.layer.borderColor = UIColor.black.cgColor
        })
    }

    func removeBorder() {
        UIView.animate(withDuration: 0.3, animations: {
            self.layer.borderColor = UIColor.clear.cgColor
        })
    }
}
