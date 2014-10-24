//
//  AddViewController.swift
//  RFB BioRepository
//
//  Created by Rhed Shi on 10/24/14.
//  Copyright (c) 2014 MGH. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Add"
    }

    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

