module.exports = (app) ->

    auth = app.middleware.autenticador
    home = app.controllers.home

    app.get "/", auth, home.index
