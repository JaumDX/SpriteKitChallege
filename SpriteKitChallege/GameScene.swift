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
        self.physicsWorld.contactDelegate = self
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -3)
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: view.bounds)
        
    }
    
    override init(size : CGSize) {
        
        gameLayer = GameLayer(size: size)
        backgroundLayer = BackgroundLayer(size: size)
        hudLayer = HudLayer(size: size)
        super.init(size : size)
        self.isUserInteractionEnabled = true
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.gameLayer?.touchesEnded(touches, with: event)
    }
    
    
    
    
    
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    
    
}
