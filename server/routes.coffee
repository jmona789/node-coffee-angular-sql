require('dotenv').config()

express = require 'express'
router = express.Router()

randomSqlTableController = require '../server/controllers/randomSqlTable'
oneToManyController = require '../server/controllers/oneToMany'
manyToManyController = require '../server/controllers/manyToMany'


module.exports = (app) ->
    # alt API routes
    app.get '/api/randomSqlTableAltApiRoute', randomSqlTableController.listAll
    app.get '/api/randomSqlTableAltApiRoute/:id', randomSqlTableController.getOne

    app.get '/api/manyToMany/:id', manyToManyController.getOne


    app.get '/api/OneToMany/:id', oneToManyController.getOne

