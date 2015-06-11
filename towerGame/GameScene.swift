//
//  GameScene.swift
//  towerGame
//
//  Created by wuchengfeng on 15/6/2.
//  Copyright (c) 2015年 wuchengfeng. All rights reserved.
//

import SpriteKit


class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        myLabel.name="mylabel"
        self.addChild(myLabel)
        
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        var touch=(touches as NSSet).anyObject()?.locationInNode(self)
        var nodetouch=nodeAtPoint(touch!)
        println(touch)
        var newEditScene=EditScene()
        var scSize:CGSize=UIScreen.mainScreen().bounds.size
        newEditScene.size=scSize
        println(scSize)
        self.view?.presentScene(newEditScene)
       
    }
   
    override func update(currentTime: CFTimeInterval) {
       
    }
}
