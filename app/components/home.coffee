module.exports = class
  constructor: ->
    @title = "Welcome"

  view: ->
    @homeView()

  HomeView: class
    constructor: ({ @title, @user }) ->

    header: ->
      "Hello, #{@user().name}"
    
    view: ->
      if @server
        @HTML [
          @HEAD @TITLE @title
          @BODY [
            @header()
            @SCRIPT src: "/client.js"
          ]
        ]
      else
        @header()

  User: class
    constructor: ->
      @name = "Joe"
