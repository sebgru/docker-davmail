# DavMail for Docker

**Davmail Version: 4.7.2**

[Davmail Gateway](http://davmail.sourceforge.net/) in a Docker container.
DavMail is a POP/IMAP/SMTP/Caldav/Carddav/LDAP exchange gateway allowing users to use any mail/calendar client (e.g. Thunderbird with Lightning or Apple iCal) with an Exchange server, even from the internet or behind a firewall through Outlook Web Access [1].

## How to run the container

First, you need a `davmail.properties` configuration. You can find more information [here](http://davmail.sourceforge.net/serversetup.html).

Second, run the container:

``` bash
docker run -v <absolute/path/to/davmail.properties>:/etc/davmail/davmail.properties sebgru/davmail
```

## Exposed ports

The following ports are exposed by the container [2]:

* caldav: 1080
* imap: 1143
* ldap: 1389
* pop: 1110
* smtp: 1025

## References
\# | Link
------------ | -------------
[1] | http://davmail.sourceforge.net/
[2] | http://davmail.sourceforge.net/serversetup.html
     
