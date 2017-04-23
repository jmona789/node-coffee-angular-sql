'use strict'

module.exports = (sequelize, DataTypes) ->
    ManyToOneRelationalSqlTable = sequelize.define 'ManyToOneRelationalSqlTable',
        string:
            type: DataTypes.STRING
        int:
            type: DataTypes.INTEGER
    ,
        classMethods:
            associate: (models) ->
                ManyToOneRelationalSqlTable.belongsTo models.OneToManyRelationalSqlTable