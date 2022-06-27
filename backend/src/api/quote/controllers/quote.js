'use strict';

/**
 *  quote controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::quote.quote', ({ strapi }) => ({
    create(ctx) {
        return strapi.service('api::quote.quote').createQuote({
            data: {
                ...ctx.request.body.data,
                owner: ctx.state.user.id
            }
        });
    },
    async find(ctx) {
        //Get Quotes with loaded relations
        let entities = await strapi.service('api::quote.quote').loadQuotes();
        entities = entities.map((entity) => {
            //Check if the authenicated User has liked the quote
            var result = entity.likes.find(like => like.owner.id === ctx.state.auth.credentials.id);
            return { ...entity, liked: result ? true : false }
        });
        return entities;

    }
}));