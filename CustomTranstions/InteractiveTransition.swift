//
//  InteractiveTransition.swift
//  CustomTranstions
//
//  Created by Sergey Pugach on 25.06.2018.
//  Copyright © 2018 Sergey Pugach. All rights reserved.
//

import UIKit

class InteractiveTransition: UIPercentDrivenInteractiveTransition, UIGestureRecognizerDelegate {

    struct Callbacks {
        var didBeginPanning: (() -> Void)? = nil
    }
    var callbacks = Callbacks()
    
    lazy var gestureRecognizer: UIPanGestureRecognizer = {
        let gestureRecognizer = UIPanGestureRecognizer()
        gestureRecognizer.delegate = self
        gestureRecognizer.addTarget(self, action: #selector(viewPanned(sender:)))
        return gestureRecognizer
    }()
    
    private let direction: PresentationDirection
    
    
    // MARK: Initialization
    init(view: UIView, direction: PresentationDirection) {
        
        self.direction = direction
        super.init()
        view.addGestureRecognizer(gestureRecognizer)
    }
    
    // MARK: User interaction
    @objc func viewPanned(sender: UIPanGestureRecognizer) {
    }
}
