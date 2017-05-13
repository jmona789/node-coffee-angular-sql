_ = require "lodash"
Promise = require "bluebird"

exports.getOne = (req, res) ->
    db.ManyToMany.findAll
        where:
            id: req.params.id
        include: [
            model: db.Many1
            model: db.Many2
        ]
    .then (dbManyToMany) ->
        res.json dbManyToMany