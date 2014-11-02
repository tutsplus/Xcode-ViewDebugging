//
//  SecondViewController.swift
//  ViewDebugging
//
//  Created by Jordan Morgan on 10/27/14.
//  Copyright (c) 2014 Jordan Morgan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController
{
    @IBOutlet var lblItems: UILabel!
    let delegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    //MARK: - View Lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        self.lblItems.text =  "\(delegate.itemsOnList) tasks on Jordan's to do list"
    }
}

