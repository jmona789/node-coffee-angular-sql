_ = require "lodash"
Promise = require "bluebird"

exports.getOne = (req, res) ->
    db.Many1Many2.findAll
        where:
            Many2Id: req.params.id
        include: [ 
            model: db.Many1
        ]
    .then (dbMany1Many2) ->
        res.json dbMany1Many2


    # db.Many2.findAll
    #     # where:
    #     #     id: req.params.id
    #     include: [ 
    #         model: db.Many1
    #         # through: db.Many1Many2
    #         through: 
    #             where: 
    #                 id: req.params.id
    #         # attributes: [
    #         #     'id'
    #         # ]
    #     ]
    # .then (dbMany1Many2) ->
    #     res.json dbMany1Many2



        



# Many2.findAll include: [ {
#   model: Project
#   through: attributes: [
#     'createdAt'
#     'startedAt'
#     'finishedAt'
#   ]
# } ]