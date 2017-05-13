# _ = require "lodash"
# Promise = require "bluebird"

# exports.listAll = (req, res) ->
#     db.Many1Many2.findAll
#         # where:
#         #     id: req.params.id
#         include: [
#             model: db.Many1
#             model: db.Many2
#         ]
#     .then (dbMany1Many2) ->
#         res.json dbMany1Many2



#         