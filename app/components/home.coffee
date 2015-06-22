module.exports = class
  
  HomeView:  require "../views/home.coffee"
  UserModel: require "../models/user.coffee"

  constructor: ->
    @title = @p "Welcome"
    @user  = @p @userModel()

    # In a second, change name and redraw.
    #
    setTimeout(
      =>
        @user().name = "Steve"
        @r()
      1000
    )

  view: ->
    @homeView @
