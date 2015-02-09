//
//  AddViewController.swift
//  RFB BioRepository
//
//  Created by Rhed Shi on 10/24/14.
//  Copyright (c) 2014 MGH. All rights reserved.
//

import UIKit

class AddViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.blackColor()]
    }

    @IBAction func cancelButtonPressed(sender: UIBarButtonItem) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
}

