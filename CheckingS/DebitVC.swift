//
//  DebitVC.swift
//  CheckingS
//
//  Created by Jim on 7/9/17.
//  Copyright © 2017 Jim. All rights reserved.
//

import Cocoa

class DebitVC: NSViewController {

  @IBOutlet var thisDebitsController: NSArrayController!
  @IBOutlet var thisSourcesController: NSArrayController!

  let moc = (NSApplication.shared().delegate as! AppDelegate).persistentContainer.viewContext
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    // Sort sources, by name
    var sortDescriptor = NSSortDescriptor(key:"name", ascending:true)
    thisSourcesController.sortDescriptors = [sortDescriptor]
    // Set debits to sort by date
    sortDescriptor = NSSortDescriptor(key:"dateCreated", ascending:true)
    thisDebitsController.sortDescriptors = [sortDescriptor]

  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}
