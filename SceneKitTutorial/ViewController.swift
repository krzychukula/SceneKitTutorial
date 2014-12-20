//
//  ViewController.swift
//  SceneKitTutorial
//
//  Created by Krzysztof Kula on 20/12/14.
//  Copyright (c) 2014 Krzysztof Kula. All rights reserved.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let scnView = self.view as SCNView
        let scene = PrimitivesScene()
        scnView.scene = scene
        scnView.backgroundColor = UIColor.blackColor()
        
        
        drawLineOfSpheresTouching(scene)
        
        
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
    }
    
    func drawLineOfSpheresTouching(scene:SCNScene){
        var radius:CGFloat = 1.0
        var offset:Float = 0.0
        for i in 0..<20 {
            var newRadius:CGFloat = radius - CGFloat(0.05)
            let sphereGeometry = SCNSphere(radius: radius)
            var node:SCNNode
            if i % 2 == 0 {
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.greenColor()
            }else{
                sphereGeometry.firstMaterial?.diffuse.contents = UIColor.redColor()
            }
            node = SCNNode(geometry: sphereGeometry)
            node.position = SCNVector3(x: offset, y: 0.0, z: 0.0)
            scene.rootNode.addChildNode(node)
            
            radius = newRadius
            offset += 2 * Float(newRadius)
        }
    }
    
    func drawLineOfSpheres(scene:SCNScene){
        let greenGeometry = SCNSphere(radius: 1.0)
        greenGeometry.firstMaterial?.diffuse.contents = UIColor.greenColor()
        
        let redGeometry = SCNSphere(radius: 1.0)
        redGeometry.firstMaterial?.diffuse.contents = UIColor.redColor()
        for i in 0..<20 {
            var node:SCNNode
            if i % 2 == 0 {
                node = SCNNode(geometry: greenGeometry)
            }else{
                node = SCNNode(geometry: redGeometry)
            }
            node.position = SCNVector3(x: 3.0 * Float(i), y: 0.0, z: 0.0)
            scene.rootNode.addChildNode(node)
        }
    }
    
    func drawSpheres(scene:SCNScene){
        let sphereGeometry = SCNSphere(radius: 1.0)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.redColor()
        let sphereNode = SCNNode(geometry: sphereGeometry)
        //scnView.rootNode.addChildNode(sphereNode)
        scene.rootNode.addChildNode(sphereNode)
        
        //SECOND
        let secondSphereGeometry = SCNSphere(radius: 0.5)
        secondSphereGeometry.firstMaterial?.diffuse.contents = UIColor.greenColor()
        let secondSphereNode = SCNNode(geometry: secondSphereGeometry)
        secondSphereNode.position = SCNVector3(x: 3.0, y: 0.0, z: 0.0)
        scene.rootNode.addChildNode(secondSphereNode)
        
        let thirdSphereGeometry = SCNSphere(radius: 1.5)
        thirdSphereGeometry.firstMaterial?.diffuse.contents = UIColor.purpleColor()
        let thirdSphereNode = SCNNode(geometry: thirdSphereGeometry)
        thirdSphereNode.position = SCNVector3(x: 0.0, y: 3.0, z: -0.5)
        scene.rootNode.addChildNode(thirdSphereNode)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

