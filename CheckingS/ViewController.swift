//
//  ViewController.swift
//  CheckingS
//
//  Created by Jim on 6/23/17.
//  Copyright © 2017 Jim. All rights reserved.
//

// This is actually the VC for the SourceListController Scene

import Cocoa

class ViewController: NSViewController {

  @IBOutlet var thisSourcesController: NSArrayController!
  @IBOutlet var thisTransactionsController: NSArrayController!

  let moc = (NSApplication.shared().delegate as! AppDelegate).persistentContainer.viewContext

  override func viewDidLoad() {
    super.viewDidLoad()

    // Do any additional setup after loading the view.
    // Sort sources, by name
    var sortDescriptor = NSSortDescriptor(key:"name", ascending:true)
    thisSourcesController.sortDescriptors = [sortDescriptor]
    // Set transactions to sort by date
    sortDescriptor = NSSortDescriptor(key:"dateCreated", ascending:true)
    thisTransactionsController.sortDescriptors = [sortDescriptor]

  }

  override var representedObject: Any? {
    didSet {
    // Update the view, if already loaded.
    }
  }


}

