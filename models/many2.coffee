'use strict'

module.exports = (sequelize, DataTypes) ->
    Many2 = sequelize.define 'Many2',
        randomCollumn:
            type: DataTypes.STRING
            allowNull: true