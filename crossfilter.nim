import jsffi

when not defined(js):
  {.error: "This module only works on the JavaScript platform".}

#when defined(nodejs):
#  import crossfilter from './crossfilter.min.js'
#var crossfilter {.importc, nodecl.}: JsObject

type
  Crossfilter* = ref object

proc crossfilter*(a:openArray[JsObject]): Crossfilter {.importc:"crossfilter".}

proc groupAll*(this:Crossfilter):Crossfilter {.importcpp.}

proc group*(this:Crossfilter):Crossfilter {.importcpp.}

proc reduceCount*(this:Crossfilter):Crossfilter {.importcpp.}



proc value*(this:Crossfilter):int {.importcpp.}

proc all*(this:Crossfilter):JsObject {.importcpp.}

#---
proc dimension*(this:Crossfilter,a: proc(b:JsObject):JsObject ):Crossfilter {.importcpp.}

proc reduceSum*(this:Crossfilter, a: proc(b:JsObject):JsObject ):Crossfilter {.importcpp.}