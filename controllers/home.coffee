module.exports = (app) ->

    Valores = app.models.valor

    index: (req, res) ->
        Valores.find (err, valores) ->
            throw err if err
            res.render "index",
                title: 'Hello World'
                usuario: req.session.usuario.nome
                valoresFaleMais: valores
