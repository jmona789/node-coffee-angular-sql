'use strict'

module.exports = (sequelize, DataTypes) ->
    ManyToOne = sequelize.define 'ManyToOne',
        string:
            type: DataTypes.STRING
        int:
            type: DataTypes.INTEGER
    ,
        classMethods:
            associate: (models) ->
                ManyToOne.belongsTo models.OneToMany