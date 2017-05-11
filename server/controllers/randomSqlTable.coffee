exports.listAll = (req, res) ->
    db.RandomSqlTable.findAll()
    .then (response) ->
        res.json response


exports.getOne = (req, res) ->
    db.RandomSqlTable.findOne
        where:
            id: req.params.id
    .then (response) ->
        res.json response
