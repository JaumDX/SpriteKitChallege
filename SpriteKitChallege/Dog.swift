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
        self.zPosition = 0
        self.setScale(4.0)
        self.physicsBody?.affectedByGravity = true
        self.physicsBody = setupPhysicsBody(objectSize: self.size)

        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    func setupPhysicsBody(objectSize: CGSize) -> SKPhysicsBody {
        
        let physicsBody = SKPhysicsBody(texture: self.texture!, size: size)
        physicsBody.affectedByGravity = true
        physicsBody.isDynamic = true
        
        
        return physicsBody
    }
    
    
    
    func peformMovement(position : CGPoint){
        
        SKAction.moveTo(x: position.x, duration: 1.3)
        
        let move = SKAction.moveTo(x: position.x, duration: 1.3)
        
        let sequence = SKAction.sequence([move])
        
        run(sequence, completion: {
            
            self.removeAllActions()
            
            
        })
    
        
    }
    
    
    
}
