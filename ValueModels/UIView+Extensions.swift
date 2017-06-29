//
//  UIView+Extensions.swift
//  ValueModels
//
//  Created by Vincent Coetzee on 2017/06/29.
//  Copyright © 2017 MacSemantics. All rights reserved.
//

import Foundation
import UIKit

extension UIView
    {
    func setAssociatedObject(_ object:Any,atKey:inout String)
        {
        objc_setAssociatedObject(self,&atKey,object,.OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        }
    
    func associatedObject(atKey:inout String) -> Any?
        {
        return(objc_getAssociatedObject(self,&atKey))
        }
    }
