//
//  ViewController.swift
//  SwiftUIHostingDemo
//
//  Created by Hardik.Ramoliya on 16/03/20.
//  Copyright © 2020 Hardik.Ramoliya. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addCircleView()
    }
}

private extension ViewController {
    func addCircleView() {
        let swiftUIView = SwiftUIView()
        let controller = UIHostingController(rootView: swiftUIView)
        addChild(controller)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(controller.view)
        controller.didMove(toParent: self)

        NSLayoutConstraint.activate([
            controller.view.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            controller.view.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            controller.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            controller.view.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
