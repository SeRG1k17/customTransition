//
//  SlideManager.swift
//  CustomTranstions
//
//  Created by Sergey Pugach on 25.06.2018.
//  Copyright © 2018 Sergey Pugach. All rights reserved.
//

import UIKit

enum PresentationDirection {
    case left
    case top
    case right
    case bottom
}

class SlideInPresentationManager: NSObject {

    var direction: PresentationDirection = .left
}

extension SlideInPresentationManager: UIViewControllerTransitioningDelegate {
    
    func presentationController(forPresented presented: UIViewController,
                                presenting: UIViewController?,
                                source: UIViewController) -> UIPresentationController? {
        
        let presentationController = SlideInPresentationController(presentedViewController: presented,
                                                                   presenting: presenting,
                                                                   direction: direction)
        return presentationController
    }
    
    func animationController(forPresented presented: UIViewController,
                             presenting: UIViewController,
                             source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return SlideInPresentationAnimator(direction: direction, isPresentation: true)
    }
    
    func animationController(forDismissed dismissed: UIViewController)
        -> UIViewControllerAnimatedTransitioning? {
            
            return SlideInPresentationAnimator(direction: direction, isPresentation: false)
    }
//    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
//        return interactiveDismissal ? dismissInteractionController : nil
//    }
//    
//    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        return SlideInTransition(fromDirection: coverDirection)
//    }
//    
//    
//    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        return SlideInTransition(fromDirection: coverDirection, reverse: true, interactive: interactiveDismissal)
//    }
}
