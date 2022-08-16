/* eslint-disable no-useless-escape */



module.exports = (plugin) => {

    plugin.controllers.auth.saveFCM = async (ctx) => {


        var res = await strapi.entityService.update(

            'plugin::users-permissions.user', ctx.state.user.id, { data: { fcm: ctx.request.body.token } });

        ctx.body = res;
    };

    plugin.routes['content-api'].routes.push({
        method: 'POST',
        path: '/auth/local/fcm',
        handler: 'auth.saveFCM',
        config: {

            prefix: '',
            policies: []
        }
    });

    return plugin;
};
