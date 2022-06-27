/* eslint-disable no-useless-escape */
const crypto = require('crypto');
const _ = require('lodash');
const routes = require('./routes');


module.exports = (plugin) => {



    console.log(routes)
    plugin.controllers.auth.saveFCM = async (ctx) => {
        console.log(ctx.request.body);
        ctx.body = "done";
    };

    
    plugin.routes['content-api'].routes.push({
        method: 'POST',
        path: '/auth/local/fcm',
        handler: 'auth.saveFCM',
        config: {

            middlewares: ['plugin::users-permissions.rateLimit'],
            prefix: '',
            policies: []
        }
    });

    
    

    return plugin;
};
