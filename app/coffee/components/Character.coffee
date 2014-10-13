class Character

  constructor: () ->
    @addLetter()
  
  addLetter : (letter="A") ->
    txt = new PointText()
    txt.content = letter
    # outlinedTxt = txt.createOutline()
    # txt.remove()
    txt.scale(8)
    txt.position = new Point 100,100
    view.draw()
    # # Ungroup items
    # for item in outlinedTxt.children
    #   document.activeLayer.appendBottom item
    #   returnItem = item
    
    # return returnItem