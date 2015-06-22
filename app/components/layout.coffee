module.exports = class
  constructor: ({ @body, @title }) ->

  view: ->
    @layoutView @

  LayoutView: class
    constructor: ({ @body, @title }) ->
    
    view: ->
      if @server
        @HTML [
          @HEAD @TITLE @title()
          @BODY [
            @body()
            @SCRIPT src: "/client.js"
          ]
        ]
      else
        @body()
