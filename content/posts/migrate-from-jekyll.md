---
title: "Deploy to Fermyon Cloud"
date: 2023-08-31
author: Thorsten Hans
description: "Deploy your Hugo site to Fermyon Cloud in minutes"
draft: false
tags: ["hugo", "Fermyon Spin", "Fermyon Cloud"]
---



Fermyon Cloud's Starter tier is free, and doesn't require you to enter any kind of payment instrument. You only need a [GitHub account](https://docs.github.com/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/remembering-your-github-username-or-email).

### Log in to Fermyon Cloud

Before deploying your application to Fermyon Cloud, you have to log in, using the `spin login` command. This generates a code to authorize your current device against the Fermyon Cloud, and prints a link that will take you to where you enter the code. (You will need to be logged into your GitHub account; if you're not, it will prompt you to log in.) Follow the instructions in the prompt to complete the authorization process.

`spin login` prints a confirmation message when authorization completes:

<!-- @selectiveCpy -->

```bash
$ spin login

Copy your one-time code:

XXXXXXXX

...and open the authorization page in your browser:

https://cloud.fermyon.com/device-authorization

Waiting for device authorization...
Device authorized!
```

### Deploy the Application

Now let's deploy the application:

<!-- @selectiveCpy -->

```bash
$ cd app
$ spin deploy
```

The deployment process prints progress information as your application uploads and is rolled out to the cloud:

<!-- @nocpy -->

```console
Uploading my-hugo-site version 0.1.0+XXXXXXXX...
Deploying...
Waiting for application to become ready... ready
Available Routes:
  my-hugo-site: https://hello-typescript-XXXXXXXX.fermyon.app (wildcard)
```

You can Ctrl+Click on the link in the terminal to visit you Hugo site deployed on Fermyon Cloud.
