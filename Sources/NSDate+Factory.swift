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
extension Date {

  public static func date(
    year: Int = 1970,
    month: Int = 01,
    day: Int = 01,
    hour: Int = 00,
    minute: Int = 00,
    second: Int = 00,
    millisecond: Int = 000,
    timeZone: TimeZone = TimeZone(secondsFromGMT: 0)!
    ) -> Date {
    let components = DateComponents(
      calendar: Calendar(identifier: Calendar.Identifier.gregorian),
      timeZone: timeZone,
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      nanosecond: millisecond * 1_000_000
    )

    guard let date = (components as DateComponents).date else {
      preconditionFailure("Could not init NSDate from NSDateComponents")
    }

    return date
  }
}
