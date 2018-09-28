Spamd
============

[![](https://images.microbadger.com/badges/version/runningman84/spamd.svg)](https://hub.docker.com/r/runningman84/spamd "Click to view the image on Docker Hub")
[![](https://images.microbadger.com/badges/image/runningman84/spamd.svg)](https://hub.docker.com/r/runningman84/spamd "Click to view the image on Docker Hub")
[![](https://img.shields.io/docker/stars/runningman84/spamd.svg)](https://hub.docker.com/r/runningman84/spamd "Click to view the image on Docker Hub")
[![](https://img.shields.io/docker/pulls/runningman84/spamd.svg)](https://hub.docker.com/r/runningman84/spamd "Click to view the image on Docker Hub")
[![Anchore Image Overview](https://anchore.io/service/badges/image/80566b17e1a770497c0c03bfbd383c86ef295e5045f1b0a5d592c9a752d63834)](https://anchore.io/image/dockerhub/runningman84%2Fspamd%3Alatest)

Introduction
----
SpamAssassin is a computer program released under the Apache License 2.0 used for e-mail spam filtering based on content-matching rules. It is now part of the Apache Foundation.

SpamAssassin uses a variety of spam-detection techniques, that includes DNS-based and fuzzy-checksum-based spam detection, Bayesian filtering, external programs, blacklists and online databases.

The program can be integrated with the mail server to automatically filter all mail for a site. It can also be run by individual users on their own mailbox and integrates with several mail programs. SpamAssassin is highly configurable; if used as a system-wide filter it can still be configured to support per-user preferences.

Install
----

```sh
docker pull runningman84/spamd
```

Running
----

```sh
docker run -d -P -p 783:783 runningman84/spamd
```

Finally
----
You can integrate spamd with my communigate docker image. A tutorial will be published soon.
