//
//  SKLabelNodeMultiline.swift
//  Multiline Label Node
//
//  Created by Joshua Cox on 6/26/15.
//  Copyright (c) 2015 Joshua Cox. All rights reserved.
//

import SpriteKit

/**
	Generates multiple SKLabelNodes for multiline labels
*/

class SKLabelNodeMultiline: SKNode {
	
	var fontSize: CGFloat = 52.0 {didSet {update()}}
	var fontColor: SKColor = UIColor.grayColor() {didSet {update()}}
	var fontName = "AvenirNext-Regular" {didSet {update()}}
	var verticalAlignmentMode = SKLabelVerticalAlignmentMode.Bottom {didSet {update()}}
	var horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center {didSet {update()}}
	var verticalLineSpacing: CGFloat = 1.0
	
	/**
		Choose a predicate for line breaks e.g., "/n"
	*/
	init(text: String, predicate: String) {
		super.init()

		let lines = text.componentsSeparatedByString(predicate)
		
		for var i = 0 ; i < lines.count ; i++ {
			let label = SKLabelNode(fontNamed: fontName)
			label.fontSize = fontSize
			label.fontColor = fontColor
			label.text = lines[i]
			label.position = CGPoint(
				x: 0,
				y: (CGFloat(i) * -label.fontSize * verticalLineSpacing))
			addChild(label)
		}
	}
	
	required init?(coder aDecoder: NSCoder) {
	    fatalError("init(coder:) has not been implemented")
	}
	
	func update() {
		for label in children {
			let label = label as! SKLabelNode
			label.position.y /= label.fontSize
			label.fontName = fontName
			label.fontSize = fontSize
			label.fontColor = fontColor
			label.verticalAlignmentMode = verticalAlignmentMode
			label.horizontalAlignmentMode = horizontalAlignmentMode
			label.position.y *= fontSize
			
		}
	}
	
}
