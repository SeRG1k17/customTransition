//
//  DismissSegue.swift
//  CustomTranstions
//
//  Created by Sergey Pugach on 25.06.2018.
//  Copyright © 2018 Sergey Pugach. All rights reserved.
//

import UIKit


class DismissSegue: UIStoryboardSegue, UIViewControllerTransitioningDelegate {
    
    override func perform() {
        
        destination.modalPresentationStyle = .custom
        destination.transitioningDelegate = self
        
        //source.present(destination, animated: true, completion: nil)
        //super.perform()
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return DismissAnimator()
    }
}
