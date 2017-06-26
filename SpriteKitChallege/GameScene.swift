//
//  GameScene.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import SpriteKit




class GameScene: SKScene {
    
    
    let gameLayer : GameLayer?
    let backgroundLayer : BackgroundLayer?
    let hudLayer : HudLayer?
    
    override func didMove(to view: SKView) {
        
        self.addChild(gameLayer!)
        self.addChild(backgroundLayer!)
        self.addChild(hudLayer!)
        
    }
    
    override init(size : CGSize) {
        
        gameLayer = GameLayer(size: size)
        backgroundLayer = BackgroundLayer(size: size)
        hudLayer = HudLayer(size: size)
        super.init(size : size)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
}
