//
//  GameObjectDelegate.swift
//  SpriteKitChallege
//
//  Created by Solid Jaum on 25/06/17.
//  Copyright © 2017 Jaum. All rights reserved.
//

import Foundation
import SpriteKit

protocol GameObjectDelegate {
    
    func didBeginContact(with node : SKNode, contact : SKPhysicsContact)
    func didEndContact(with node : SKNode, contact : SKPhysicsContact)
    
    
}
