'use strict';

/*
    Pull files from master branch of the Git Repository

*/
    
exports.pull = function (req, res, next){


    var start = function(){

            var repository = 'https://github.com/jeunesseBurce/Githook-Test-Repository',
                branch = 'master';
            
            send_response(repository, branch);

    },

    send_response = function(err, repository, branch){
        
        if(err){
            return next(err);
        }

        if(branch){ /* If branch is specified, pull from the repository branch only*/
            console.log(branch);
        }

        /* If branch not specified, pull content from master */

       res.send(repository);

       /* Run shell script at this point, using auto-pull from git hooks */

    };

    start();

};