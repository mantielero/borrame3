import jsffi

when not defined(js):
  {.error: "This module only works on the JavaScript platform".}

when defined(nodejs):
  import crossfilter from './crossfilter.min.js'

type
  Crossfilter* = ref object

proc crossfilter*(a:openArray[JsObject]): Crossfilter {.importc:"crossfilter".}

proc groupAll*(this:Crossfilter):Crossfilter {.importcpp.}

proc reduceCount*(this:Crossfilter):Crossfilter {.importcpp.}

proc value*(this:Crossfilter):int {.importcpp.}

#---
# function dimension(value, iterable) {
proc dimension*(this:Crossfilter, ):Crossfilter {.importcpp.}