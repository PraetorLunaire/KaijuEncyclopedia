//
//  KaijuProfile.swift
//  KaijuProject
//
//  Created by Rubens Paulico on 18/06/19.
//  Copyright © 2019 Rubens Paulico. All rights reserved.
//

import Foundation
import UIKit

class KaijuProfile {
    
    init(name: String, picture: UIImage, kaijuButtonName: UIImage, firstAppearance: String, description: String, appearsIn: [String]) {
        
        self.name = name
        self.picture = picture
        self.kaijuButtonName = kaijuButtonName
        self.firstAppearance = firstAppearance
        self.description = description
        self.appearsIn = appearsIn
        
    }
    
    
    var name: String
    var picture: UIImage
    var kaijuButtonName: UIImage
    var firstAppearance: String
    var description: String
    var appearsIn: [String]
    
    
}
