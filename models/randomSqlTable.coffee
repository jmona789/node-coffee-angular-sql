'use strict'

module.exports = (sequelize, DataTypes) ->
  randomSqlTable = sequelize.define 'randomSqlTable',
    randomCollumn:
      type: DataTypes.STRING
      allowNull: true