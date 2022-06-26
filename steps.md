### Firebase Cloud Messaging
## Application Cases
## Intiate strapi server
## Setup your admin account

Once you have successfully set up an administrator account click on 'Create your first Content type' use the steps below to guide you through

1. On the right side of the side menu navigation click 'Create new collection type'
1. Enter Quote as the display name then click continue
1. On the new dialog click on the Text button
1. Enter `description` as the Name field then select long text then finally click the finish button.
1. On the top right section of the page click the save button.

Strapi will modify the project's folder structure. Wait for then changes to be applied and the server to restart. In order to make the collection accessible to everyone, we need to change some configurations in the user & persmission plugin. Follow the steps below to achieve that.

1. Click on settings on the side navigation bar then click on roles under the user and persmission plugin.
1. Click on `Public` the click on Quote which is the name of the collection we has created earlier.
1. Click on `create` and `find` checkboxes.
1. Click on save on the top right section of the page

Insert Image Here

For demonstration purposes we will allow unauthenicated users to add entires into the Quote collection. It is not advisiable to do so in a production environment.



## Create Firebase Project

Make sure you have a google account then open https://console.firebase.google.com/u/0/ 

enter the project name as Quotes

Once the project has been successfully created open the project settings page. CLick on the service account tabe
1. Click the settings Icon on the side navigation bar
1. Click on the service account tab
1. Click on Generate new Pair button and a modal dialog will appear explaining the importance of keeping the key confidential. 
1. Click Generate Key and save the json file inthe root folder of the strapi project.

## Install firebase tools and login

To use flutter fire, you need to have firebase-tools cli. It is responsible for authenticaing your machine to the firebase console. More info can be found here [Firebase CLI](https://firebase.google.com/docs/cli). run the following command to get started.

We also need to install the flutterfire_cli. It works in conjuction to detect the locally authenticated user then fetches all firebase projects associated with that user.

1. Run this on your shell
dart pub global activate flutterfire_cli

This will make the cli accessible from any directory in the shell.

1. Run flutterfire configure on the shell. If it is the first time you are running the command, the command will fecth the projects of the authenticated user the ask you to select one. 

We'll select the `Quotes` then select all our target platforms.
> Messaging is not supported on all platforms please refer to this table to see which firebase features are available on specific platforms.

1. Run `flutter pub add firebase_core` to install the main depenciy of firebase plugins.

1. Open ./lib/main.dart then load the core plugin into the application.

1. We have to install the Firebase Cloud Messaging run the following command to install it.
`flutter pub add firebase_messaging`. You can view other firebase plugins [here](https://firebase.google.com/docs/flutter/setup?platform=android#available-plugins).


## Install Firebase Admin Module on the strapi project dir

We'll follow this guide from the official firebase [documentation](https://firebase.google.com/docs/admin/setup).

1. Within strapi's folder structure, run the command below

npm install firebase-admin --save
# OR
yarn add firebase-admin

After the installation has finished, we'll set an environment variable that will contain the path of the json configuartion file.

Alternatively you can manually direct the configuartion to the json file.

Open the main.js file and within the boostrap function add the following code.

```js

let project_id = "";
let fcm_url = `https://fcm.googleapis.com/v1/{parent=projects/${project_id}}/messages:send`;

//export GOOGLE_APPLICATION_CREDENTIALS="/home/ian/strapi/fcm/backend/quotes.json"

const firebase = initializeApp({
    credential: applicationDefault()
});

sendNotification(fcm){
    https://fcm.googleapis.com/fcm/send
}

sendNotificationToTopic(topic_name){

}

subscribeTopic(fcm, topic_name){

}

strapi.messaging = {
    subscribeTopic,
    sendNotificationToTopic,
    sendNotification
}

```
To make those functions accessible globally on the strapi server, we saved it to the 
## Plugin the config to the strapi server.

We'll use 
### Setup Flutter Application
Since we will be using flutter on the frontend, We have to install two pub packages, firebase_messaging and dio. We'll use dio to send the messaging token to the server. Futhermore we will use a state management library.

## Install FlutterFire https://firebase.google.com/docs/flutter/setup?platform=android

