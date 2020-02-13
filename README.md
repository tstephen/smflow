Marketing automation tools using Flowable
=========================================

This project wraps up process automation tools as Flowable 'apps'.

Getting started
---------------

You're going to need a flowable process engine configured to be able to send email. The easiest way to do this is using a Docker container configured with your own `application.properties` overrides. Thanks to the relaxed binding that Spring Boot provides you can simply supply the properties you want using `--env-file`. Testing was done on v6.5.0.

Note that if you wish to use GMail's SMTP server and have 2FA enabled you will need an 'application password' as described [here](https://support.google.com/mail/answer/185833?hl=en).

```
docker run -p 8080:8080 --env-file /full/path/to/application.properties flowable/flowable-rest
```

After that, edit `src/scripts/env.example.sh` as necessary and source it `source env.sh`.

The following scripts in (`src/scripts` dir) will help manage the server:

- `deploy-app.sh path/to/app.zip`: deploy an app zip into the server
- `get-pds.sh`: return list of deployed process definitions TIP: pass result to `grep`
- `start-instance.sh path/to/data.json`: start a process instance with the specified payload

Event planning
--------------

End to end business process to plan, recruit attendees, run and follow-up a social marketing event.

Subscription
------------

Handle a classic website form and implement a number of automated touchpoints.

As well as being able to start instances from the command-line `start-proc.js` contains dependency-free JavaScript that can be embedded into a web page to start a process instance.
