'use strict'

module.exports = (sequelize, DataTypes) ->
    RandomSqlTable = sequelize.define 'randomSqlTable',
        randomCollumn:
            type: DataTypes.STRING
            allowNull: true