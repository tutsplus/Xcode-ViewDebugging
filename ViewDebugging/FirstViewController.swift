//
//  FirstViewController.swift
//  ViewDebugging
//
//  Created by Jordan Morgan on 10/27/14.
//  Copyright (c) 2014 Jordan Morgan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{

    @IBOutlet var tableView: UITableView!
    let delegate = UIApplication.sharedApplication().delegate as AppDelegate
    
    var mockNotesDataSource: [String] = ["Do some laundry", "Finish homework", "Walk the dog", "Learn about view debugging"]
    {
        didSet
        {
            delegate.itemsOnList = self.mockNotesDataSource.count
            self.tableView.reloadData()
        }
    }
    
    //MARK: - View Lifecycle
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.setupTableViewCellAndRows()
        
        //Add button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: Selector("addToDoItem"))
    }

    override func viewWillAppear(animated: Bool)
    {
        super.viewWillAppear(animated)
        delegate.itemsOnList = self.mockNotesDataSource.count
    }

    //MARK: - Tableview Datasource/Helper Methods
    func setupTableViewCellAndRows()
    {
        self.tableView.estimatedRowHeight = 44.0
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.mockNotesDataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel.text = self.mockNotesDataSource[indexPath.row]
        
        return cell
    }
    
    //MARK: - Utility Methods
    func addToDoItem()
    {
        self.mockNotesDataSource.append("New item")
    }
}

