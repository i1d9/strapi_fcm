'use strict';

/**
 * like service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::like.like', ({ strapi }) => ({



    createLike(params) {


        return super.create(params);

    }
}));
