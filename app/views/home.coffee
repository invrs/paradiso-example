module.exports = class
  constructor: ({ @user }) ->
    @body  = @p "Hello, #{@user().name}"
    @title = @p "Welcome"
  
  view: ->
    @layoutView { @body, @title }

  LayoutView: require "./layout.coffee"
