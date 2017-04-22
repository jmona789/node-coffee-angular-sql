require('dotenv').config()

express = require 'express'
router = express.Router()

randomSqlTableController = require '../server/controllers/randomSqlTable'

module.exports = (app) ->
  # alt API route
  app.get '/randomSqlTableAltApiRoute', randomSqlTableController.listAll