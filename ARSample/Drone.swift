//
//  Drone.swift
//  ARSample
//
//  Created by Anuradha Sharma on 5/30/18.
//  Copyright © 2018 Anuradha Sharma. All rights reserved.
//

import ARKit

class Drone: SCNNode {
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "Drone.scn") else { return }
        let wrapperNode = SCNNode()
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        addChildNode(wrapperNode)
    }
}
