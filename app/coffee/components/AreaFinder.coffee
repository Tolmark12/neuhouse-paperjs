class AreaFinder

  constructor: () ->

  findArea : (str, height=1, callback) ->
    squarePoints = 0
    project.importSVG "assets/Helvetica.svg", (item)=> 
      console.log item
      for letter in str.split ""
        console.log @findId( letter )
        letterVector = item.children[ @findId( letter ) ].children[0]
        console.log "#{letter}'s area is #{letterVector.area} square points"
        squarePoints += letterVector.area

      callback squarePoints/72/72   


  findId : (str) ->
    # If this is a character iregularly named by illustrator
    # convert it to it's ASCII hex equvalent and wrap it like so:
    # 0 becomes _x30_
    # else, just return the original string
    if "()[]{}|\\/#@$&*+<>0123456789".indexOf(str) != -1
      str = "_x#{ str.charCodeAt().toString(16).toUpperCase() }_"
      
    return str
