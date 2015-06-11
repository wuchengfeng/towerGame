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
    

    func UILoad(scene:SKScene,mode:EditMode){
        var EditModeWord=SKLabelNode(text: "EditMode")
        EditModeWord.fontName="Arial"
        EditModeWord.position=CGPointMake(368, 380)
        scene.addChild(EditModeWord)
        //
        var saveButton=SKSpriteNode(imageNamed: "保存.png")
        saveButton.position=CGPointMake(600, 380)
        saveButton.setScale(0.2)
        scene.addChild(saveButton)
        println("UI load success")
    }
    func addQCbutton(nodeForAdd:SKNode){
        var queding=SKSpriteNode(imageNamed: "确定.png")
        var quxiao=SKSpriteNode(imageNamed: "取消.png")
        //确定按钮和取消按钮坐标偏移
        queding.position=CGPointMake(50, 50)
        queding.name="确定"
        quxiao.position=CGPointMake(50, -50)
        quxiao.name="取消"
        //把按钮和光圈绑定在一起
        nodeForAdd.addChild(queding)
        nodeForAdd.addChild(quxiao)
        //打印程序信息

    }
    func addButton(scene:SKScene,touches: Set<NSObject>){
        //读取点击位置坐标
        var touchesNSSet:UITouch=(touches as NSSet).anyObject() as! UITouch
        var touchpostion=touchesNSSet.locationInNode(scene)
        println("点击坐标\(touchpostion)")
        //创建光圈和确定，取消按钮
        var guangquan=SKSpriteNode(imageNamed: "光圈.png")
        //光圈位置设定
        guangquan.position=CGPointMake(touchpostion.x, touchpostion.y)
        guangquan.name="光圈"
        addQCbutton(guangquan)
        scene.addChild(guangquan)
        //打印程序信息

    }
    func switchTouchNode(node:SKNode,scene:SKScene,touches: Set<NSObject>)
    {
        var nodename:String
        if node.name==nil{
            nodename="nil"
        }
        else
        {
        nodename=node.name!
        }
        switch nodename {
        case "光圈" :
            println("点到了光圈")
        case "取消":
            var parte=node.parent
            parte?.removeFromParent()
            println("移除所有动态添加的node")
        case "确定":
            var nodeForChangeName=node.parent
            nodeForChangeName?.name="光环"
            nodeForChangeName?.removeAllChildren()
            println("改变光圈的名字")
        case "光环":
            addQCbutton(node)
            node.name="光圈"
        case "保存":
            let home=NSHomeDirectory() as NSString;
            let docPath=home.stringByAppendingPathComponent("Documents") as NSString
            let filePath=docPath.stringByAppendingPathComponent("data.plist")
            var dataSource=NSMutableArray();
            dataSource.addObject("12312")
            dataSource.writeToFile(filePath, atomically: true);
        default:
            var ExsistG=scene.childNodeWithName("光圈")
            if(ExsistG==nil){
                addButton(scene, touches: touches)
                println("添加光圈")}
            else{
                ExsistG?.removeFromParent()
            }
        }
        
    
    }
}