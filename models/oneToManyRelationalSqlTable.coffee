'use strict'

module.exports = (sequelize, DataTypes) ->
    OneToManyRelationalSqlTable = sequelize.define 'OneToManyRelationalSqlTable',
        string:
            type: DataTypes.STRING
        int:
            type: DataTypes.INTEGER
    ,
        classMethods:
            associate: (models) ->
                OneToManyRelationalSqlTable.hasMany models.ManyToOneRelationalSqlTable,
                    onDelete: 'cascade'
