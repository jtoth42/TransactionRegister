//
//  SignTransformer.swift
//  CheckingS
//
//  Created by Jim on 7/13/17.
//  Copyright © 2017 Jim. All rights reserved.
//

import Foundation
//import os.log

@objc(SignTransformer) class SignTransformer: ValueTransformer {
  
  override class func transformedValueClass() -> AnyClass {
    return NSDecimalNumber.self
  }
  
  override class func allowsReverseTransformation() -> Bool {
    return true
  }
  
// Since no reverseTransform is actually provided, the reverse uses
// the forward as well, which is the same sign change that we want.
  
  override func transformedValue(_ value: Any?) -> Any? {
    let zero = NSDecimalNumber.zero
    guard let inDecimal = value as? NSDecimalNumber else {
      guard let inNumber = value as? NSNumber else { return nil }
      return zero.subtracting(NSDecimalNumber(decimal: inNumber.decimalValue))
    }
    return zero.subtracting(inDecimal)
  }
  
}
