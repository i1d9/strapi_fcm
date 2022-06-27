'use strict';

/**
 *  like controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::like.like',({strapi})=>({
    async create(ctx){

        let result = await strapi.service('api::like.like').createLike({
            data: {
                ...ctx.request.body.data,
                owner: ctx.state.user.id
            }
        });


        
        quote = strapi.service('api::quote.quote').findQuote(ctx.request.body.data.quote);

        ctx.body = result;


    }

}));
