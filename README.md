

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

- Set env variables
```
export checklist_target_password=<ssh_pwd>
export checklist_target_host=<ssh_host>
export checklist_target_sudo_pass=<sudo_pwd>
export checklist_target_user=<ssh_user>
export checklist_target_alf_glob=/opt/alf-installation/tomcat/shared/classes/alfresco-global.properties
export checklist_target_catalina_log=/opt/alf-installation/tomcat/logs/catalina.out
export checklist_target_alfresco_mmt=/opt/alf-installation/bin/alfresco-mmt.jar
export checklist_target_alfresco_wars=/opt/alf-installation/tomcat/webapps/

```

- Run 
```
bundle update
bundle exec rake
```

- Collect results
Check serverspec.xml junit report file.

License and Authors
-------------------
Authors: Sergiu Vidrascu (vsergiu@hotmail.com)
