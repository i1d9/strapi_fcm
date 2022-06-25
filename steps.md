### Firebase Cloud Messaging
## Application Cases
## Intiate strapi server
## Setup your admin account
## Create Firebase Project

Make sure you have a google account then open https://console.firebase.google.com/u/0/ 

enter the project name as Quotes

Once the project has been successfully created open the project settings page. CLick on the service account tabe
1. Click the settings Icon on the side navigation bar
1. Click on the service account tab
1. Click on Generate new Pair button and a modal dialog will appear explaining the importance of keeping the key confidential. 1. Click Generate Key and save the json file inthe root folder of the strapi project.

## Install firebase tools and login
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
const app = initializeApp({
    credential: applicationDefault()
});

```
## Plugin the config to the strapi server.

### Setup Flutter Application
## Install FlutterFire https://firebase.google.com/docs/flutter/setup?platform=android
