#!/bin/sh

node_modules/.bin/sequelize db:migrate
node app.js
