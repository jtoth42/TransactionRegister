//
//  BalanceVC.swift
//  CheckingS
//
//  Created by Jim on 7/4/17.
//  Copyright © 2017 Jim. All rights reserved.
//

import Cocoa

class BalanceVC: NSViewController {
  
  let moc = (NSApplication.shared().delegate as! AppDelegate).persistentContainer.viewContext
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override var representedObject: Any? {
    didSet {
      // Update the view, if already loaded.
    }
  }
  
  
}
