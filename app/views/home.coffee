module.exports = class
  constructor: ({ @title, @user }) ->
    @body = @p "Hello, #{@user().name}"
  
  view: ->
    @layoutView({ @body, @title })

  LayoutView: require "./layout.coffee"
