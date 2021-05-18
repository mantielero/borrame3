include karax / prelude

proc createDom(): VNode =
  result = buildHtml(tdiv):
    h1(text "Hello Karax", class="title")
    
    p(class="subtitle"):
      text "This is a paragraph."
    a(class="button is-primary"):
      text "Button"
    
setRenderer createDom