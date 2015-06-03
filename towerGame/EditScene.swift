//
//  EditScene.swift
//  towerGame
//
//  Created by wuchengfeng on 15/6/2.
//  Copyright (c) 2015年 wuchengfeng. All rights reserved.
//

import Foundation
import SpriteKit
class EditScene: GameScene {
    //加载UI
    override func didMoveToView(view: SKView) {
        let UIcontroller=UIController()
        UIcontroller.UILoad(self, mode: EditMode.TowerPlaceEditMode)
    }
    
    

}