'use strict';

/**
 *  like controller
 */

const { createCoreController } = require('@strapi/strapi').factories;
module.exports = createCoreController('api::like.like', ({ strapi }) => ({
    async create(ctx) {
        let result = await strapi.service('api::like.like').createLike({
            ...ctx.request.body.data,
            owner: ctx.state.user.id
        });
        var quote = await strapi.service('api::quote.quote').findQuote(ctx.request.body.data.quote);
        var owner = await strapi.entityService.findOne(
            'plugin::users-permissions.user', quote.owner.id);

        strapi.notification.sendNotification(owner.fcm, {
            notification: {
                title: `${ctx.state.user.username} liked your quote`,
                body: `${quote.description}`
            }
        });
        ctx.body = result;
    }
}));
