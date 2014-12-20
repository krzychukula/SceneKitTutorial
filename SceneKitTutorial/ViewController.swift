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
        scnView.scene = PrimitivesScene() as SCNScene
        scnView.backgroundColor = UIColor.blackColor()
        
        let sphereGeometry = SCNSphere(radius: 1.0)
        let sphereNode = SCNNode(geometry: sphereGeometry)
        //scnView.rootNode.addChildNode(sphereNode)
        scnView.scene?.rootNode.addChildNode(sphereNode)
        
        
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

