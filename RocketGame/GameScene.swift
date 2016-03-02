//
//  GameScene.swift
//  RocketGame
//
//  Created by Ethan Look on 2/23/16.
//  Copyright (c) 2016 VandyApps. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    private var lastUFO = NSTimeInterval()
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        for touch in touches {
            let location = touch.locationInNode(self)
            
            let rocket = Rocket(x: location.x, y: location.y, z: 0)
            rocket.addTo(self)
            rocket.flyAndRemove(self.frame.height + 100)
        }
    }
    
    func addUFO() {
        let ufo = UFO(x: self.frame.width / 2, y: self.frame.height + 10, z: 0)
        ufo.addTo(self)
        ufo.flyAndRemove(self.frame.height + 100, time: 3.5)
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        if (currentTime - lastUFO > 3.0) {
            lastUFO = currentTime
            
            addUFO()
        }
    }
}
