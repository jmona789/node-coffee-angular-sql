_ = require "lodash"
Promise = require "bluebird"

exports.getOne = (req, res) ->
    console.log 'yoyo'
    console.log req.params.id
    db.OneToMany.findAll
        where:
            id: req.params.id
        include: [
            model: db.ManyToOne
        ]
    .then (dbOneToMany) ->
        res.json dbOneToMany


    # console.log 'yoyo'
    # console.log req.params.id
    # db.ManyToOne.findAll
    #     where:
    #         OneToManyId: req.params.id
    #     include: [
    #         model: db.OneToMany
    #     ]
    # .then (dbOneToMany) ->
    #     res.json dbOneToMany