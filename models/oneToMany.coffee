'use strict'

module.exports = (sequelize, DataTypes) ->
    OneToMany = sequelize.define 'OneToMany',
        string:
            type: DataTypes.STRING
        int:
            type: DataTypes.INTEGER
    ,
        classMethods:
            associate: (models) ->
                OneToMany.hasMany models.ManyToOne,
                    onDelete: 'cascade'
