//
//  Background.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit
import SpriteKit

class Background: SKSpriteNode {
    
    init(position : CGPoint, texture : SKTexture) {
        super.init(texture: texture, color: .clear, size: texture.size())
        self.texture?.filteringMode = .nearest
        self.position = position
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
