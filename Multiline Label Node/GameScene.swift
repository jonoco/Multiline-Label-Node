//
//  GameScene.swift
//  Multiline Label Node
//
//  Created by Joshua Cox on 6/26/15.
//  Copyright (c) 2015 Joshua Cox. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            let location = touch.locationInNode(self)
            
            let string = SKLabelNodeMultiline(text: "Hello world \n Hello worlddddddd \n Hello world \n Hello world \n Hello worlddddd \n Hello world \n ", predicate: "\n")
						string.position = location
						string.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Right
						string.fontSize = 22.0
					
						self.addChild(string)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
