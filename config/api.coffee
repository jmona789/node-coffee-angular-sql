epilogue = require 'epilogue'

module.exports = (app) ->
    epilogue.initialize
        app: app
        sequelize: db.sequelize

    RandomSqlTable = epilogue.resource
        model: db.RandomSqlTable
        endpoints: [
            '/api/randomSqlTables'
            '/api/randomSqlTables/:id'
        ]
        associations: true
        pagination: false

    Many1Many2Resource = epilogue.resource
        model: db.Many1Many2
        endpoints: [
            '/api/many1many2'
            '/api/many1many2/:id'
        ]
        associations: true