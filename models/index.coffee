'use strict'

_ = require 'lodash'
fs = require 'fs'
path = require 'path'
Sequelize = require 'sequelize'

loadMysqlDb = ->
    dbOptions =
        dialect: 'postgres'
        protocol: 'postgres'
        logging: false
        dialectOptions:
            ssl: true

    dbUrl = process.env.DATABASE_URL
    if process.env.NODE_ENV isnt 'production'
        dbOptions.dialectOptions.ssl = false

    sequelize = new Sequelize dbUrl, dbOptions

    db = {}

    modelPath = "#{process.cwd()}/models"

    files = fs.readdirSync modelPath

    _.each files, (file) ->
        if file isnt 'index.coffee'
            model = sequelize.import path.join modelPath, file
            db[model.name] = model

    Object.keys(db).forEach (modelName) ->
        if 'associate' of db[modelName]
            db[modelName].associate db

    mysqlDb = _.assign db,
        sequelize: sequelize
        Sequelize: Sequelize

    return mysqlDb

module.exports = loadMysqlDb()