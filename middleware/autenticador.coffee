module.exports = (app) ->

    (req, res, next) ->
        return res.redirect '/login' unless req.session.usuario
        next()
