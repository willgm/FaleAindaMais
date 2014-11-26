module.exports = (app) ->

    valor = app.db.Schema
        origem:
            type: String
            required:true
        destino:
            type: String
            required:true
        preco:
            type: Number
            required:true

    valor.index { origem: 1, destino: 1 }, { unique: true }

    app.db.model 'valor', valor