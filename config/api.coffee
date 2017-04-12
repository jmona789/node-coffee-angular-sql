epilogue = require 'epilogue'

module.exports = (app) ->
  epilogue.initialize
    app: app
    sequelize: db.sequelize

  randomSqlTable = epilogue.resource
    model: db.randomSqlTable
    endpoints: [
      '/api/randomSqlTables'
      '/api/randomSqlTables/:id'
    ]
    associations: true
    pagination: false