//
//  EditScene.swift
//  towerGame
//
//  Created by wuchengfeng on 15/6/2.
//  Copyright (c) 2015年 wuchengfeng. All rights reserved.
//

import Foundation
import SpriteKit
class EditScene: SKScene {
    //加载UI
    override func didMoveToView(view: SKView) {
        let UIcontroller=UIController()
        UIcontroller.UILoad(self, mode:EditMode.PathEditMode)
        
        
        self.userInteractionEnabled=true
    }
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        let uiController=UIController()
        //识别点击的node名称
        var touchesNSSet:UITouch=(touches as NSSet).anyObject() as! UITouch
        var touchpostion=touchesNSSet.locationInNode(scene)
        var touchNode:SKNode=nodeAtPoint(touchpostion)
        if(touchNode.name==nil)
        {
            uiController.switchTouchNode(touchNode, scene: self, touches: touches)
        }
        else
        {
            println("点击节点识别为\(touchNode.name!)")
            uiController.switchTouchNode(touchNode, scene: self, touches: touches)
        }
    }
    
    

}