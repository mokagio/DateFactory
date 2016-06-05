//
//  NSDate+Factory.swift
//  DateFactory
//
//  Created by Giovanni on 1/06/2016.
//  Copyright © 2016 mokagio. All rights reserved.
//

import Foundation


/// This `NSDate` extension provides a builder method intended to be used to
/// simplify creating dates in unit tests.
extension NSDate {

  public static func date(
    year year: Int = 1970,
         month: Int = 01,
         day: Int = 01,
         hour: Int = 00,
         minute: Int = 00,
         second: Int = 00,
         millisecond: Int = 000,
         timeZone: NSTimeZone = NSTimeZone(forSecondsFromGMT: 0)
    ) -> NSDate {
    let components = NSDateComponents()
    components.calendar = NSCalendar(identifier: NSCalendarIdentifierGregorian)
    components.timeZone = timeZone
    components.year = year
    components.month = month
    components.day = day
    components.hour = hour
    components.minute = minute
    components.second = second
    components.nanosecond = millisecond * 1000000

    guard let date = components.date else {
      preconditionFailure("Could not init NSDate from NSDateComponents")
    }

    return date
  }
}
