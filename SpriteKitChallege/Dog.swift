//
//  Dog.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit
import SpriteKit

class Dog: SKSpriteNode, GameObject {

    var characterState: CharacterState
    var inverted: Bool
    var onGround: Bool
    
    required init(position : CGPoint) {
        
        let texture = SKTexture(imageNamed: "Wolf1")
        characterState = .idle
        texture.filteringMode = .nearest
        inverted = false
        onGround = false
        
        super.init(texture: texture, color: .clear, size: texture.size())
        self.position = position
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupPhysicsBody(objectSize: CGSize) -> SKPhysicsBody {
        return SKPhysicsBody()
    }
    
    
    
}
