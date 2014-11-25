module.exports = (app) ->

    login = app.controllers.login

    app.all "/login", login.login, login.index
    app.get "/logout", login.logout
