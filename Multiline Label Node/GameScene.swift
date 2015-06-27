//
//  GameScene.swift
//  Multiline Label Node
//
//  Created by Joshua Cox on 6/26/15.
//  Copyright (c) 2015 Joshua Cox. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
	
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            let location = touch.locationInNode(self)
					
						let text = "Hello world \n Helloooooo world \n Helloo world \n Hellooooooooo world \n Hello worlddddd \n Hello world \n "
						let predicate = "\n"
					
            let string = SKLabelNodeMultiline(text: text, predicate: predicate)
						string.position = location
						string.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Right
						string.fontSize = 22.0
						string.fontColor = UIColor.greenColor()
						string.fontName = "Helvetica"
						string.verticalLineSpacing = 22.0
					
						self.addChild(string)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
