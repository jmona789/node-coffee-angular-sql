'use strict'

module.exports = (sequelize, DataTypes) ->
    Many1 = sequelize.define 'Many1',
        randomCollumn:
            type: DataTypes.STRING
            allowNull: true