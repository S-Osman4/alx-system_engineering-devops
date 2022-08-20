## Requirements:

You must add:
+ 3 firewalls
+ 1 SSL certificate to serve www.foobar.com over HTTPS
+ 3 monitoring clients (data collector for Sumologic or other monitoring services)

## Specifics About This Infrastructure

+ Added firewalls to control traffic and for better security. Also added monitoring tools, that will monitor our application and also our server for a better performance and data collector.
+ Firewalls are software or hardware that prevent unauthorized access to a network.It checks the coming and going data, based on predefined rules. If that data abides by the rules then it will be allowed to enter.
+ HTTPS is a secure form of HTTP. It uses data encryption to transfer data from one to another. When HTTPS request is sent, public key with SSL certification are sent back from the server. The client does SSL handshake, which means the client also shows it credentials that matches the SSL certificate. This then allows the data to be decrypted in the clients machine. 
+ Monitoring tools are used to collect data about, what is going on and how it's perfomance is, when it comes to application and/or server. The data also shows any abnormalities that is making performance lower. This data is then used to fix the problem that is being repeated. It will make fixing easier because the data will lead you to the area where you need to focus to fix it.  
+ Data is constantly collected when an application or a server is doing it's job. It's performance, availability, user experiences are constantly being monitored. This data will then be changed to readable form. So If there is a glitch it will be caught immediately and dealt with.
+ We first set up monitoring tools. This tools are able to monitor	metrics. When they do so, the can monitor the quieres per second, to see if it can handle the traffic and if it is scalable enough for the incoming traffic.
  
## Issues With This Infrastructure

+ Terminating SSL at the load balancer level would leave the traffic between the load balancer and the web servers unencrypted.
+ Having one MySQL server is an issue because it is not scalable and can act as a single point of failure for the web infrastructure.
+ Having servers with all the same components would make the components contend for resources on the server like CPU, Memory, I/O, etc., which can lead to poor performance and also make it difficult to locate the source of the problem. A setup such as this is not easily scalable. 
