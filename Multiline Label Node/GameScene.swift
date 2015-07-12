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
		let label = SKLabelNodeMultiline(text: "Click \n Anywhere \n To \n Begin!")
		label.position = CGPoint(x: size.width/2, y: size.height/2)
		label.fontSize = 114.0
		label.verticalLineSpacing = 30.0
		addChild(label)
		
		println("adding label \(label)")
	}
	
	override init(size: CGSize) {
		super.init(size: size)
	}

	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
		
		for touch in (touches as! Set<UITouch>) {
			let location = touch.locationInNode(self)
		
			let text = "Hello world \n \n Helloooooo world \n Hello worlddddd \n \n \n Hello world"
			let predicate = "\n"
		
			let string = SKLabelNodeMultiline(text: text, predicate: predicate)
			string.position = location
			string.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
			string.fontSize = CGFloat((arc4random() % 32) + 64)
			string.fontColor = UIColor.greenColor()
			string.fontName = "Helvetica"
			string.verticalLineSpacing = CGFloat(arc4random() % 15)
		
			self.addChild(string)
		}
	}
}
