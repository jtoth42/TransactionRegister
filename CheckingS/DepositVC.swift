//
//  DepositVC.swift
//  CheckingS
//
//  Created by Jim on 7/9/17.
//

import Cocoa

class DepositVC: NSViewController {
  
  @IBOutlet var thisSourcesController: NSArrayController!
  @IBOutlet var thisDepositsController: NSArrayController!

  let moc = (NSApplication.shared().delegate as! AppDelegate).persistentContainer.viewContext
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    // Sort sources, by name
    var sortDescriptor = NSSortDescriptor(key:"name", ascending:true)
    thisSourcesController.sortDescriptors = [sortDescriptor]
    // Set deposits to sort by date
    sortDescriptor = NSSortDescriptor(key:"dateCreated", ascending:true)
    thisDepositsController.sortDescriptors = [sortDescriptor]
    
  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}
