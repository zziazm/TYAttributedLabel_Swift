//
//  TYTextContainer.swift
//  TYAttributedLabel_Swift
//
//  Created by 赵铭 on 2017/8/18.
//  Copyright © 2017年 zm. All rights reserved.
//

import UIKit
private func textColor() -> UIColor {
    return UIColor(red: 51.0/255.0, green: 51.0/255.0, blue: 51.0/255/0, alpha: 1)
}
private func linkColor() -> UIColor {
    return UIColor(red: 0/255.0, green: 91/255.0, blue: 255/255.0, alpha: 1)
}

private func CTFramesetterSuggestFrameSizeForAttributedStringWithConstraints(framesetter: CTFramesetter, attributedString: NSAttributedString, size: CGSize, numberOfLines: Int) -> CGSize{
     var rangeToSize = CFRange(location: 0, length: CFIndex(attributedString.length))
     var constraints = CGSize(width: size.width, height: CGFloat(MAXFLOAT))
    
    
    if numberOfLines > 0{
        var path = CGMutablePath()
        path.addRect(CGRect(x: 0, y: 0, width: constraints.width, height: CGFloat(MAXFLOAT)))
    }
    
    return CGSize(width: 0, height: 0)
}


class TYTextContainer: NSObject {
    
}
