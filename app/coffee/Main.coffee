class Main

  constructor: ($el) ->
    paper.install(window);
    canvas = jadeTemplate['canvas']({})
    $el.append( $(canvas) )
    paper.setup $('canvas')[0]

    areaFinder   = new AreaFinder()
    str          = "70000"
    height       = 8
    areaFinder.findArea "A0+", height, (sqInchesAtOneInch)=>
      scaledSqInches = sqInchesAtOneInch*Math.pow(height, 2)
      console.log "The text '#{str}' at #{height}\" cut out of 10 guage steel is #{scaledSqInches.toFixed(2)} square inches and weighs #{(scaledSqInches*0.04).toFixed(2)}lbs."
    # area*(scalefactor squared)
  
  gettingFeetWet : () ->
    path = new Path()
    path.strokeColor = "black"

    start = new Point(100, 100);
    path.moveTo start
    path.lineTo start.add([200, -50])
    view.draw()

    char = new Character()
  
  
