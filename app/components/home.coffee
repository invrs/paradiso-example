module.exports = class
  constructor: ->
    @title = @p "Welcome"

  view: ->
    @homeView @

  HomeView: class
    constructor: ({ @title, @user }) ->      
      @body = @p "Hello, #{@user().name}"
    
    view: ->
      @layoutView({ @body, @title })

    LayoutView: require "./layout.coffee"

  User: class
    constructor: ->
      @name = "Joe"
