//
//  UIController.swift
//  towerGame
//
//  Created by wuchengfeng on 15/6/2.
//  Copyright (c) 2015年 wuchengfeng. All rights reserved.
//

import Foundation
import SpriteKit
class UIController: SKNode {
    
    func touchNeedConfirm(touches: Set<NSObject>,Scene:SKScene,mode:EditMode){
        println("you have called the touchNeedConfirm")
        println("add the circle and the button")
        
        switch mode{
        case .PathEditMode:
            println("you are in the pathEditMode")
        case .TowerPlaceEditMode:
            println("you are in the towerplaceEditMode")
        }
    }
    func touchBack(mode:EditMode){
        println("touch the back button")
    }
    func touchOK(mode:EditMode){
        println("touch the OK button")
    }
    func touchCancel(mode:EditMode){
        println("touch the cancel button")
    }
    func UILoad(scene:GameScene,mode:EditMode){
        println("UI load success")
    }
    func addButton(scene:GameScene){
        println("you have add the UI button")
        
    }
}