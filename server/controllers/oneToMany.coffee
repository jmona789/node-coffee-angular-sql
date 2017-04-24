_ = require "lodash"
Promise = require "bluebird"

exports.getOne = (req, res) ->
    db.ManyToOne.findAll
        where:
            OneToManyId: req.params.id
        include: [
            model: db.OneToMany
        ]
    .then (dbOneToMany) ->
        res.json dbOneToMany