//
//  ModalViewController.swift
//  CustomTranstions
//
//  Created by Sergey Pugach on 25.06.2018.
//  Copyright © 2018 Sergey Pugach. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closeButtonDidTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
