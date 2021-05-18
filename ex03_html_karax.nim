include karax / prelude

proc createDom(): VNode =
  result = buildHtml(tdiv):
    h1 "Hello World!"
    text "Hello"

setRenderer createDom