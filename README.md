# DateFactory

[![Build Status](https://travis-ci.org/mokagio/DateFactory.svg?branch=master)](https://travis-ci.org/mokagio/DateFactory)
[![Coverage Status](https://coveralls.io/repos/github/mokagio/DateFactory/badge.svg?branch=master)](https://coveralls.io/github/mokagio/DateFactory?branch=master)

An n-framework for creating `NSDate`, to be used in your unit tests.

## What's an _n-framework_?

It's a framework even smaller than a μ-framework, which you should consider
using by **copying it's single source and tests files** in your project rather
than going through the trouble of using a dependency manager.

## Why did you make this?

Two reasons:

- I wanted an easier way to create fixture `NSDate` in my tests than
using `NSDateFormatter`.
- I wanted to experiment with multiplaform framework, SPM, etc, in a small project.

---

Get in touch on Twitter [@mokagio](https://twitter.com/mokagio) or visit [mokacoding.com](http://mokacoding.com)
