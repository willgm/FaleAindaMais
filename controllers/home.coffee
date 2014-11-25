module.exports = (app) ->

    index: (req, res) ->
        res.render "index",
            title: 'Hello World'
            usuario: req.session.usuario.nome
