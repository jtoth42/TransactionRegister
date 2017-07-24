//
//  CheckVC.swift
//  CheckingS
//
//  Created by Jim on 7/1/17.
//  Copyright © 2017 Jim. All rights reserved.
//

import Cocoa

class CheckVC: NSViewController {

  @IBOutlet var thisSourcesController: NSArrayController!
  @IBOutlet var thisChecksController: NSArrayController!

  let moc = (NSApplication.shared().delegate as! AppDelegate).persistentContainer.viewContext
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    // Sort sources, by name
    var sortDescriptor = NSSortDescriptor(key:"name", ascending:true)
    thisSourcesController.sortDescriptors = [sortDescriptor]
    // Set checks to sort by number
    sortDescriptor = NSSortDescriptor(key:"transNumber", ascending:true)
    thisChecksController.sortDescriptors = [sortDescriptor]

  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}
