0.1.7 - December 26th, 2013
----------------

* [synth](https://github.com/synth) Renames Yammer gem to Yapper
* [synth](https://github.com/synth) Updates the dependency on Yam gem to latest: 2.1.1

0.1.4
----------------

This release rips out the old api dependencies on Faraday and whatever else handles connection related issues and passed it all off to Yammer's own Yam gem(which itself uses Faraday).

Improved api support

    yam.users
    yam.in_group  

Better Exception Handling

    It was completely broken, now you can catch all sorts of exceptions with Yammer api based upon http status:
    
    - 400: Yammer::BadRequest
    - 401: Yammer::Unauthorized
    - 403: Yammer::Forbidden
    - 404: Yammer::NotFound
    - 406: Yammer::NotAcceptable
    - 500: Yammer:InternalServerError
    - 502: Yammer::BadGateway
    - 503: Yammer::ServiceUnavailable
    
0.1.2 - April 19th, 2012
-------------------------
* [ybenjo](https://github.com/ybenjo) added search, groups and suggestions api support.

0.1.1 - Sept 21st, 2011
-------------------------
* [Rob Warner](https://github.com/hoop33) added about_topic and user[:id]

0.1.0 - July 15th, 2011
-------------------------
* First public release
* Basic README.md

0.0.2 - July 9th, 2011
-------------------------
* Adding support for messages in threads

0.0.1 - July 9th, 2011
-------------------------
* [Initial release](http://github.com/roadly/yammer)