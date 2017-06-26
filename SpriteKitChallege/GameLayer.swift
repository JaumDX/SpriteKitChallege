//
//  GameLayer.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit
import SpriteKit

class GameLayer: SKNode {
    
    let player : Dog!
    
    init(size : CGSize) {
        
        self.player = Dog(position: CGPoint(x: size.width / 2, y: size.height / 2))
        super.init()
        self.player.zPosition = 1
        self.addChild(player)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
