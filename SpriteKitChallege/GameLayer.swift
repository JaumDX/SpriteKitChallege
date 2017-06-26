//
//  GameLayer.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import SpriteKit

class GameLayer: SKNode {
    
    let player : Dog!
    
    init(size : CGSize) {
        
        
        
        self.player = Dog(position: CGPoint(x: size.width / 2, y: size.height / 2))
        super.init()
        self.zPosition = 1
        self.isUserInteractionEnabled = true
        self.player.isUserInteractionEnabled = false
        self.addChild(player)
        
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let position = touches.first?.location(in: self)
        
        self.player.peformMovement(position: position!)
        
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
