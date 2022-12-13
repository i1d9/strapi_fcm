'use strict';

var admin = require("firebase-admin");
var serviceAccount = require("./quotes.json");
module.exports = {
  /**
   * An asynchronous register function that runs before
   * your application is initialized.
   *
   * This gives you an opportunity to extend code.
   */
  register({ strapi }) { },
  /**
   * An asynchronous bootstrap function that runs before
   * your application gets started.
   *
   * This gives you an opportunity to set up your data model,
   * run jobs, or perform some special logic.
   */
  bootstrap({ strapi }) {

    let firebase = admin.initializeApp({
      credential: admin.credential.cert(serviceAccount),
    });

    //Make Firebase available everywhere
    strapi.firebase = firebase;
    let messaging = firebase.messaging();


    let sendNotification = (fcm, data) => {
      //https://fcm.googleapis.com/fcm/send
      let message = {
        ...data,
        token: fcm
      }
      messaging.send(message).then((res) => {
        console.log(res);
      }).catch((error) => {
        console.log(error);
      });
    }

    let sendNotificationToTopic = (topic_name) => {
      let message = {
        ...data,
        topic: topic_name
      }
      messaging.send(message).then((res) => {
        console.log(res);
      }).catch((error) => {
        console.log(error);
      });
    }

    let subscribeTopic = (fcm, topic_name) => {
      messaging.subscribeToTopic(fcm, topic_name).then((res) => {
        console.log(res);
      }).catch((error) => {
        console.log(error);
      });
    }

    strapi.notification = {
      subscribeTopic,
      sendNotificationToTopic,
      sendNotification
    }
  },
};
