1. Download CF - You can download trial version of the coldfusion from the Adobe website (Adobe is the company that produces ColdFusion) for study purpose.

The (free) developer edition provides the same functionality as the full-blown enterprise version. The only limitation is that you can only access the website from the local computer and two other IP addresses. Therefore you won't actually need to pay for ColdFusion in order to build your website. And as long as your web hosting provider supports ColdFusion, you won't need to pay anything else to use ColdFusion.

2. You need to install ColdFusion before you can build ColdFusion applications on your local computer. Installing ColdFusion is just like installing any other piece of software — you simply click your way through the installation wizard, configuring it as you go.

I am using ADOBE® COLDFUSION® (2021 release) for windows, in this study repository.

I have included only the study files that I had created in this repository.

### Starting ColdFusion

Once ColdFusion has been installed, your web server should be able to render any ColdFusion file. That is, if it has a .cfm extension, your web server will pass it to ColdFusion to process. However, this will only occur if ColdFusion has in fact, been started.

You may need to start ColdFusion once you've finished the installation. Here's how to do that.

- Open a Command Prompt window
- Change directory to {cfroot}\cfusion\bin (Eg: D:\CF\cfusion\bin)
- Run the following command: coldfusion.exe -start -console
- You can also stop and restart ColdFusion. To stop ColdFusion use coldfusion.exe -stop -console. To restart use coldfusion.exe -restart -console.

#### Accessing files

Once you have started ColdFusion, you can access the files in root directory (wwwroot) via the following URL: http://{website url} (where {website url} is the name of your website's URL). This is the default URL - this directory and it's contents is automatically created when you install ColdFusion.

For example, if you're using localhost, http://localhost:8500 or http://127.0.0.1:8500

You can create directories and files inside the wwwroot directory and access it via this url.
(For example, in this demo I had created a direcory called 'study' inside wwwroot. I can access a file called 'study.cfm' by the url http://127.0.0.1:8500/study/study.cfm or http://localhost:8500/study/study.cfm)

### ColdFusion Administrator

The ColdFusion Administrator (also referred to as CF Admin), is the central interface for configuring your ColdFusion server. You can configure settings for mail, database connections, debugging options and much more.

#### Accessing the ColdFusion Administrator

Once you have installed ColdFusion, you can access the ColdFusion Administrator via the following URL: http://{website url}/cfide/administrator (where {website url} is the name of your website's URL). This is the default URL - this directory and it's contents is automatically created when you install ColdFusion.

For example, if you're using localhost, the CF Admin URL will either be http://localhost:8500/cfide/administrator (if you're using the ColdFusion standalone web server), or http://localhost/cfide/administrator (if you're using your own web server, such as IIS or Apache). This is because ColdFusion's standalone web server uses port 8500 whereas, a typical web server setup will use port 80 (and you don't need to specify the port number if you use port 80).

For more information on ColdFusion Administrator and additional setup visit https://www.quackit.com/coldfusion/tutorial/coldfusion_administrator.cfm
