'use strict'

module.exports = (sequelize, DataTypes) ->
    RandomSqlTable = sequelize.define 'RandomSqlTable',
        randomCollumn:
            type: DataTypes.STRING
            allowNull: true