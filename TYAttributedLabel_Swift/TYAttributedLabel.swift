//
//  TYAttributedLabel.swift
//  TYAttributedLabel_Swift
//
//  Created by 赵铭 on 2017/8/18.
//  Copyright © 2017年 zm. All rights reserved.
//

import UIKit

enum TYVerticalAlignment: Int {
    case top, center, bottom
}


private func selectAreaColor() -> UIColor {
    return UIColor(red: 204.0/255.0, green: 211.0/255.0, blue: 236.0/255.0, alpha: 1)
}

func highLightLinkColor() -> UIColor {
    return UIColor(red: 28.0/255.0, green: 0.0/255.0, blue: 213.0/255.0, alpha: 1)
}

let kEllipsesCharacter = "\\u2026"
let TYTextRunAttributedName = "TYTextRunAttributedName"

class TYAttributedLabel: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupProperty()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var highlightedLinkColor: UIColor?
    var highlightedLinkBackgroundRadius: CGFloat = 2.0
    var highlightedLinkBackgroundColor: UIColor = selectAreaColor()
    func setupProperty() -> Void {
        if self.backgroundColor == nil {
            self.backgroundColor = UIColor.white
        }
        
        self.isUserInteractionEnabled = true
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
