//
//  UITextField+Extensions.swift
//  ValueModels
//
//  Created by Vincent Coetzee on 2017/06/29.
//  Copyright © 2017 MacSemantics. All rights reserved.
//

import Foundation
import UIKit

extension UITextField:Dependent
    {
    private struct ModelKeys
        {
        static var textModelKey = "textModelKey"
        }
    
    var textModel:Model?
        {
        get
            {
            let model = associatedObject(atKey: &ModelKeys.textModelKey)
            return(model as? Model)
            }
        set
            {
            if let model = textModel
                {
                model.remove(dependent:self)
                }
            newValue?.add(dependent:self)
            }
        }
    
    func update(aspect:String,with:Any?,sender:Any?)
        {
        }
    }
