---
author: Steve Good
date: 2012-05-24
title: Grails and Bootstrap and Jelastic, Oh My!
draft: false
slug: grails-and-bootstrap-and-jelastic-oh-my
---

When the news that [Posterous was purchased by Twitter](http://blog.twitter.com/2012/03/welcoming-posterous-team-to-flock.html) I decided that this would be a great time for me to rebuild and move my blog. This is actually the first post on that new platform.  The rest of this post details the technologies used.

The application itself is written using [Grails](http://grails.org/). For those who are not familiar, Grails is an application platform and framework that leverages technologies like Groovy (a Java abstraction language), Spring, a dynamic template engine and [more](http://grails.org/doc/latest/guide/introduction.html).

For the layout I used [Twitter Bootstrap](http://twitter.github.com/bootstrap) and customized the less files to personalize the site. I'm using the [LESS](http://lesscss.org/) files and compiling my CSS because, well, LESS is just awesome! I stole the background from the layout I was using on Posterous but the rest is either default styles or custom written (like the transparent well around this blog post).

The whole thing was packaged up as a WAR file and deployed to a [Jelastic](http://jelastic.com) environment.  My topology (pictured below) is pretty simple, JDK 7, up to 8 Tomcat 7 cloudlets and a single MariaDB cloudlet. MariaDB, for those wondering, is a fully compatible, open source version of MySQL that is not controlled by Oracle (whether that's good or bad I'll leave up to you). I chose Jelastic due to how easy it is to deploy applications.  Jelastic also allows me to build my applications as I normally would without needing to install plugins or using annotations in my domain like you do if you want to use services like Heroku or Google App Engine.  It's also *much* less expensive than an equivalent environment from Amazon's EC2.

![stevegood.org jelastic topology](http://dl.dropbox.com/u/208899/jelastic-topology.png "Jelastic topology for stevegood.org")
