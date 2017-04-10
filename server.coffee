require('dotenv').config()

express = require 'express'

# AuthController = require './server/controllers/auth'
# RandomSqlTableController = require './server/controllers/randomsqltable'

app = express()
http = require('http').Server(app)

# Database
global.db = require './models'

# Configure express
require('./config/express')(app)
# require('./config/passport')(app)

# require('./config/activity')(app)

# # Configure API Routes
# require('./config/api')(app)

# app.get '/api/isAuthenticated', AuthController.clientAuthenticate
# app.get '/api/v1/checkedInBookings', RandomSqlTableController.getCheckedInStudents


app.get '/*', (req, res) ->
    res.sendFile "#{process.cwd()}/views/index.html"

port = process.env.PORT || 3001

global.db.sequelize.sync().then ->
    http.listen port
    console.info "Server listening on port #{port}"

    # require('./scripts/smsReminders/smsReminders')()
    # require('./scripts/deletePdfs')()
module.exports = app
