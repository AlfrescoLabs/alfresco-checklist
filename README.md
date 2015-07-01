

alfresco-syschecklist : Serverspec tests to validate alfresco installations
======================

Setup your test target machine in the test.properties file
along with the other properties as required


USAGE
-----

- Checkout
```
git clone git@github.com:AlfrescoTestAutomation/alfresco-checklist.git
cd alfresco-checklist
```

- Run with rake
 ```
 # edit test.properties file then

 bundle install
 bundle exec rake
 ```

- Run with thor
 ```
bundle install  
bundle exec thor checklist:execute  
Usage:  
  thor checklist:execute  

Options:  
  -h, [--host=HOST]          # target machine hostname/ip  
  -o, [--ssh-port=SSH_PORT]  # target machine ssh port  
                             # Default: 22  
  -u, [--user=USER]          # target machine user  
  -p, [--pass=PASS]          # target machine password  
  -s, [--spass=SPASS]        # target machine sudo pass  
  -g, [--alfglob=ALFGLOB]    # target machine global properties  
  -l, [--alflog=ALFLOG]      # target machine alfresco log  
  -m, [--alfmmt=ALFMMT]      # target machine alfresco_mmt jar  
  -f, [--alfwar=ALFWAR]      # target machine alfresco war  
  -r, [--shrwar=SHRWAR]      # target machine share war  

#example:  
# thor checklist:execute -h 172.29.101.192 -u root -p alfresco -s alfresco -g /opt/alf-installation/tomcat/shared/classes/alfresco-global.properties -l /opt/alf-installation/tomcat/logs/catalina.out -m /opt/alf-installation/bin/alfresco-mmt.jar -f /opt/alf-installation/tomcat/webapps/alfresco.war -r /opt/alf-installation/tomcat/webapps/share.war  

# thor checklist:execute -h 127.0.0.1 -o 2222 -u vagrant -p vagrant -s vagrant -g /usr/share/tomcat/shared/classes/alfresco-global.properties -l /usr/share/tomcat-alfresco/logs/alfresco.log -m /usr/share/tomcat/bin/alfresco-mmt.jar -f /usr/share/tomcat-alfresco/webapps/alfresco.war -r /usr/share/tomcat-share/webapps/share.war  
 ```

- Collect results
Check serverspec.html junit report file.

License and Authors
-------------------
Authors: Sergiu Vidrascu (vsergiu@hotmail.com)
