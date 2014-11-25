module.exports = (app) ->

    usuario = app.db.Schema
        nome:
            type: String
            required:true
        email:
            type: String
            required:true
            index: unique:true

    app.db.model 'usuario', usuario