//
//  SignTransformer.swift
//  CheckingS
//
//  Created by Jim on 7/13/17.
//

import Foundation

// I don't understand in general when the objc prefix is needed, only
// that SignTransformer is not found without objc() used here.

@objc(SignTransformer) class SignTransformer: ValueTransformer {
  
  override class func transformedValueClass() -> AnyClass {
    return NSDecimalNumber.self
  }
  
  override class func allowsReverseTransformation() -> Bool {
    return true
  }
  
// Since no reverseTransform is actually provided, the reverse uses
// the forward as well, which is the same sign change that we want.
    
// Going in one direction, from storage to display, the incoming
// can be downcast to NSDecimalNumber.  But in the other direction
// the incoming is an NSNumber holding a double, so extra work is needed.
  
  override func transformedValue(_ value: Any?) -> Any? {
    let zero = NSDecimalNumber.zero
    guard let inDecimal = value as? NSDecimalNumber else {
      guard let inNumber = value as? NSNumber else { return nil }
      return zero.subtracting(NSDecimalNumber(decimal: inNumber.decimalValue))
    }
    return zero.subtracting(inDecimal)
  }
  
}
