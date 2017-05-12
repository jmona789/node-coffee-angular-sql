'use strict'

module.exports = (sequelize, DataTypes) ->
    Many1Many2 = sequelize.define 'Many1Many2',
        moreColumnsIfNeeded:
            type: DataTypes.STRING
        ,
            classMethods:
                associate: (models) ->
                    Many1Many2.belongsTo models.Many1
                    Many1Many2.belongsTo models.Mnay2