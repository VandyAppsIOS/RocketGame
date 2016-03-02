//
//  UFO.swift
//  RocketGame_completed
//
//  Created by Ethan Look on 2/23/16.
//  Copyright © 2016 VandyApps. All rights reserved.
//

import SpriteKit

class UFO: Sprite {
    
    init(x:CGFloat, y:CGFloat, z:CGFloat) {
        super.init(imageNamed: "ufo", name: "ufo", x: x, y: y, z: z)
    }
    
    func flyAndRemove(height: CGFloat, time: NSTimeInterval) {
        let destination = CGPoint(x: self.sprite.position.x, y: self.sprite.position.y - height)
        
        let actionMove = SKAction.moveTo(destination, duration: time)
        let actionMoveDone = SKAction.runBlock() {
            self.sprite.removeFromParent()
        }
        self.sprite.runAction(SKAction.sequence([actionMove, actionMoveDone]))
    }
    
}