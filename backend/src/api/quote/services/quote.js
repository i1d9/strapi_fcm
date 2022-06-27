'use strict';

/**
 * quote service.
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::quote.quote', ({ strapi }) => ({

    loadQuotes() {
        return strapi.entityService.findMany('api::quote.quote', {
            populate: {
                owner: {
                    fields: ['username']
                },
                likes: {
                    populate: {
                        owner: {
                            fields: ['id'],
                        }
                    }
                }
            }
        });
    },
    createQuote(params) {


        return super.create(params);

    },

    findQuote(id) {


        return strapi.entityService.findOne('api::quote.quote', id, {

            populate: {
                owner: {
                    fields: ['fcm']
                }
            }
        });

    }




}));
