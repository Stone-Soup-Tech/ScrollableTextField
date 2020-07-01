//
//  String+ExpectedHeight.swift
//  GooDic
//
//  Created by ttvu on 5/22/20.
//  Copyright © 2020 paxcreation. All rights reserved.
//

import UIKit

extension String {
    func expectedHeight(withWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesFontLeading, .usesLineFragmentOrigin], attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return boundingBox.height
    }
    
    func expectedWidth(withHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: [.usesFontLeading, .usesLineFragmentOrigin], attributes: [NSAttributedString.Key.font: font], context: nil)
        
        return boundingBox.width
    }
    
    func size(withFont font: UIFont) -> CGSize {
        let string = NSString(string: self)
        let size = string.size(withAttributes: [NSAttributedString.Key.font: font])
        return size
    }
}
