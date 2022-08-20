## Requirements:

You must use:
+ 1 server
+ 1 web server (Nginx)
+ 1 application server
+ 1 application files (your code base)
+ 1 database (MySQL)
+ 1 domain name foobar.com configured with a www record that points to your server IP 8.8.8.8
## Specifics About This Infrastructure

+ What a server is.<br/>A server is a computer hardware or software that provides services to other computers,whether it is to store files, to use email or to connect to web  sites, which are usually referred to as *clients*.

+ The role of the domain name.<br/> Domain name is a text based name of a webpage and is used to provide a human-friendly alias for an IP Address. It is used by DNS to match it to its respective IP address. For example, the domain name `www.wikipedia.org` is easier to recognize and remember than `91.198.174.192`. The IP address and domain name alias is mapped in the Domain Name System (DNS)

+ The type of DNS record `www` is in `www.foobar.com`. The domain name here is foobar.com that comes after the dot and the first part, www, is a subdomain. www is used as a CNAME record whose value is foobar.com, which is then used by DNS to find it's IP address.<br/>`www.foobar.com` uses an **A record**. This can be checked by running `dig www.foobar.com`.<br/>**Note:** the results might be different but for the infrastructure in this design, an **A** record is used.<br/>
<i>Address Mapping record (A Record)—also known as a DNS host record, stores a hostname and its corresponding IPv4 address.</i>

+ The role of the web server.<br/>The web server is a software/hardware that accepts requests via HTTP or secure HTTP (HTTPS) and responds with the content of the requested resource or an error messsage. Web server in its hardware form stores the html, java, css, image, it also stores web server software. The web server software controls how websites are accessed. This is done with the help of HTTP server, that understand URL and HTTP requests, to deliver us a static webpage.

+ The role of the application server.<br/> Application Server handles the business logic. This means it will transform the data to provide special functions, to make the webpage interactive with the user. It is an intermediate between the webserver
and database. It reduces the complex interaction between webserver and database, by storing previous interactions, giving better performance, better management. Basically, to install, operate and host applications and associated services for end users, IT services and organizations and facilitates the hosting and delivery of high-end consumer or business applications

+ The role of the database.<br/>Database is a way to store information in an organized manner so that it can be easily accessed, updated and utilized.

+ What the server uses to communicate with the client (computer of the user requesting the website).<br/>Communication between the client and the server occurs over the internet network through the TCP/IP protocol suite.
## Issues With This Infrastructure

+ There are multiple SPOF (Single Point Of Failure) in this infrastructure.<br/>For example, malfunction in its hardware or software or even issues in the data center can fail the entire system

+ Downtime when maintenance needed.<br/>When we need to run some maintenance checks on any component, they have to be put down or the server has to be turned off. Since there's only one server, the website would be experiencing a downtime. At this time users will not be able to access the services because there is no other server that can take its place.

+ Cannot scale if there's too much incoming traffic.<br/>It would be hard to scale this infrastructure becauses one server contains the required components. The server can quickly run out of resources or slow down when it starts receiving a lot of requests.
