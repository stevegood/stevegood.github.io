---
date: 2012-06-12T17:00:00Z
title: "Grails Console Tip: Running BootStrap and Using Services"
draft: false
slug: "grails-console-tip-running-bootstrap-and-using-services"
description: ""
author: "Steve Good"
---

I use the [Grails console](http://grails.org/doc/2.0.x/ref/Command%20Line/console.html) pretty heavily during application development and thought I would share a couple of tips that will help reduce some frustrations and make for a more consistent development experience overall.

## Running BootStrap.groovy

If you have ever used the console you may have noticed that the BootStrap is never executed.  Sometimes this is a good thing as we may not want to wait for all the init routines to run.  Other times it is imperative that those routines run so that we have good starter data or meta-classes available, etc.  The good news is that it is **very** easy to execute the BootStrap in the console.  Place the following snippet at the top of the console (Note, if you don't want this to run each time you execute the script in the console but only the *first* time the script is run, you may want to wrap the snippet with some controlling logic).

```groovy
new BootStrap().init(ctx.servletContext)
```

For the most part, everything in your BootStrap should work.  However, I have found that there is no dependency injection performed and you will need to init all services (see the next snippet for services and getting beans from Spring). You may want to take that into consideration when using the above snippet.

## Using Services

This is something that used to frustrate me to my wits end. One would think that in order to use a service one would just need to create a new instance of it.  While this is mostly true, there is a small caveat. When you create a new instance of a service in the console Spring does not perform any dependency injections.  This means that any services you may be using within the service you are initializing will not be available to use. **(cue hours of hair pulling and setting up services to be used by hand)**

There is good news here also.  As you may have noticed from the BootStrap example, the Grails console makes the application context available to us to use.  Which means, we also have access to the beans that Spring has already initialized, complete with all their dependancies. Like most things in Grails, gaining access to these is pretty simple.  See the following snippet.

```groovy
def myService = ctx.getBean("myUserService")
def result = myService.doSomethingAmazing()
```

The above code will retrieve an instance of the MyUserService (note that the first character is lowercase). You will now be able to use that service without the need to setup each dependency by hand.

## In Closing

I hope that helps some of you to reduce your frustrations when using the console. If you haven't already used the console I would suggest checking it out as it is an integral portion of the Grails ecosystem. If you have any console tips that you would like to share please leave a comment below!

Happy coding, and here is a sample BootStrap.groovy that I wrote using these techniques.

```groovy
def bootStrap = new BootStrap()
["grailsApplication","userService"].each {
    // loop over a list of properties that need to be injected
    bootStrap[it] = ctx.getBean(it)
}

def userService = ctx.getBean("userService")
userService.createUser("Chester","Tester","chester@tester.com")
```
