module.exports = (app) ->

    index: (req, res) ->
        res.render "index",
            title: 'Hello World'
            usuario: req.session.usuario.nome
            valoresFaleMais: [
                {
                    origem: '011'
                    destino: '016'
                    preco: 1.9
                }
                {
                    origem: '016'
                    destino: '011'
                    preco: 2.9
                }
                {
                    origem: '011'
                    destino: '017'
                    preco: 1.7
                }
                {
                    origem: '017'
                    destino: '011'
                    preco: 2.7
                }
                {
                    origem: '011'
                    destino: '018'
                    preco: 0.9
                }
                {
                    origem: '018'
                    destino: '011'
                    preco: 1.9
                }
            ]
