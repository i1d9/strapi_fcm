'use strict';

/**
 * like service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::like.like', ({ strapi }) => ({



    createLike(params) {


        return strapi.service('api::like.like').create({
            data: {


                quote: params.quote,
                owner: params.owner,
                publishedAt: new Date()

            }
        });




    }
}));
