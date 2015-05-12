'use strict';

var exec = require('child_process').exec,
    sys = require('sys'),
    child_process;

/* Check pulls to repository branch */

exports.pull = function (req,res,next){

    var start = function(){

        var repository = 'https://github.com/jeunesseBurce/Githook-Test-Repository',
            branch = 'master';

        check_branch(repository,branch);
    },
    
    check_branch = function (err, repository, branch){

        if(err){
            return next(err);
        }

        if(branch){
            if(branch === 'master') {
                send_response(repository);
            }
        }

    },

    send_response = function (err, result){

            if(err){
                return next(err);
            }

            if(result === 'master'){
                child_process = exec.exec('/scripts/githook_test.sh',
                     function(error,stdout,stderr){
                        sys.print('stdout:', stdout);
                        sys.print('stderr:', stderr);

                        if(error) {
                            sys.print('error:', error);
                        }
                     });
            }

             /* Check if branch name exists */
            res.send(result);
    };

    start();

};