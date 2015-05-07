'use strict';

var express = require('express'),
    https = require('https'),
    config = require(__dirname + '/config/config'),
    app = express(),
    gith = require('gith').create(5143),

    repository = 'jeunesseBurce/Githook-Test-Repository';

/* Get payload from github repository */


gith({
    repo: repository
}).on( 'all', function (payload){
    console.log('Received payload from Github');
});