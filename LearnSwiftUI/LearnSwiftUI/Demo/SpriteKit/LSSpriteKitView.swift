//
//  LSSpriteKitView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/30.
//

import SwiftUI
import SpriteKit

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        let location = touch.location(in: self)
        let box = SKSpriteNode(color: SKColor.red, size: CGSize(width: 50, height: 50))
        box.position = location
        box.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 50, height: 50))
        addChild(box)
    }
}


struct LSSpriteKitView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.size = CGSize(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        scene.scaleMode = .aspectFit
        scene.backgroundColor = UIColor.black
        return scene
    }

    var body: some View {
        SpriteView(scene: scene)
            .frame(width: .infinity, height: .infinity)
            .ignoresSafeArea()
    }
}

struct LSSpriteKitView_Previews: PreviewProvider {
    static var previews: some View {
        LSSpriteKitView()
    }
}
