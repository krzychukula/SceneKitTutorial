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
        
        let sphereGeometry = SCNSphere(radius: 1.0)
        sphereGeometry.firstMaterial?.diffuse.contents = UIColor.redColor()
        let sphereNode = SCNNode(geometry: sphereGeometry)
        //scnView.rootNode.addChildNode(sphereNode)
        scnView.scene?.rootNode.addChildNode(sphereNode)
        
        //SECOND
        let secondSphereGeometry = SCNSphere(radius: 0.5)
        secondSphereGeometry.firstMaterial?.diffuse.contents = UIColor.greenColor()
        let secondSphereNode = SCNNode(geometry: secondSphereGeometry)
        secondSphereNode.position = SCNVector3(x: 3.0, y: 0.0, z: 0.0)
        scene.rootNode.addChildNode(secondSphereNode)
        
        
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

