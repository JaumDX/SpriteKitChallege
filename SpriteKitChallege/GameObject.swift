//
//  GameObject.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import UIKit
import SpriteKit


enum CharacterState : String {
    case walk = "Walking"
    case idle = "Idle"
    case jump = "Jumping"
    case dead = "Dead"
    case hit = "Hitting"
}

protocol GameObject {
    
    var inverted : Bool {get set}
    var onGround : Bool {get set}
    var characterState : CharacterState {get set}
    
    func setupPhysicsBody(objectSize : CGSize) -> SKPhysicsBody
    
}
