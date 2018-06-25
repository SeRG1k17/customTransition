//
//  ViewController.swift
//  CustomTranstions
//
//  Created by Sergey Pugach on 25.06.2018.
//  Copyright © 2018 Sergey Pugach. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var slideInTransitioningDelegate = SlideInPresentationManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func tapped(_ sender: UIButton) {
        
        let vc = storyboard!.instantiateViewController(withIdentifier: "Modal")
        
        vc.modalPresentationStyle = .custom
        vc.transitioningDelegate = slideInTransitioningDelegate
        
        self.present(vc, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let vc = segue.destination as! ModalViewController
//        vc.transitioningDelegate = self
//    }
}
//
//extension ViewController: UIViewControllerTransitioningDelegate {
//    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        return DismissAnimator()
//    }
//
//    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
//        return DismissAnimator()
//    }
//}

