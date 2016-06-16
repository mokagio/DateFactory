//
//  DateFactoryPropertyTests.swift
//  DateFactory
//
//  Created by Giovanni on 16/06/2016.
//  Copyright © 2016 mokagio. All rights reserved.
//

import XCTest
import SwiftCheck
import DateFactory

class DateFactoryPropertyTests: XCTestCase {

  func testProperty() {
    let formatter = NSDateFormatter()
    formatter.dateFormat = "yyyy-MM-dd-HH-mm-ss-SSS"
    formatter.timeZone = NSTimeZone(forSecondsFromGMT: 0)

    property("Generated date converted to String contain the same inputs") <- forAll {
      (year: Int, month: Int, day: Int, hour: Int, minute: Int, second: Int, millisecond: Int) in

      let subject = NSDate.date(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond
      )

      let expectation = String(format: "%04d", year) + "-" +
        String(format: "%02d", month) + "-" +
        String(format: "%02d", day) + "-" +
        String(format: "%02d", hour) + "-" +
        String(format: "%02d", minute) + "-" +
        String(format: "%02d", second) + "-" +
        String(format: "%03d", millisecond)

      return formatter.stringFromDate(subject) == expectation
    }
  }
}
