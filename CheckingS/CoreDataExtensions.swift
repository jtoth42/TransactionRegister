//
//  CoreDataExtensions.swift
//  CheckingS
//
//  Created by Jim on 7/12/17.
//

import CoreData

extension Transaction {
  override public func awakeFromInsert() {
    super.awakeFromInsert()
    dateCreated = NSDate()
  }
}


extension Check {
  override public func awakeFromInsert() {
    super.awakeFromInsert()
    let moc = self.managedObjectContext
    let request = NSFetchRequest<Check>(entityName: "Check")
    let sortDescriptor = NSSortDescriptor(key:"transNumber", ascending:true)
    request.sortDescriptors = [sortDescriptor]
    do {
      let returnArray = try moc?.fetch(request)
      if returnArray!.count > 1 {
        guard let lastCheck = returnArray!.last else {return}
        guard let lastCheckNumber = lastCheck.value(forKey:"transNumber") as? NSNumber else {return}
        let nextCheckNumber = 1 + lastCheckNumber.intValue
        transNumber = NSNumber(value: nextCheckNumber)
      }
        else
      {
        transNumber = NSNumber(value: 0)
        }
    } catch {
      NSLog(error as! String)
    }
  }
}

