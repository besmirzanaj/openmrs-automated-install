## Ubuntu 16.04 only

##install dependecies
apt install openjdk-8-jdk*
apt install maven

## Get the Code
cd~
git clone https://github.com/openmrs/openmrs-module-legacyui.git

##Build the packages
cd openmrs-module-legacyui
mvn clean install

##deploy gui module
cp ~/openmrs-module-legacyui/omod/targetlegacyui-1.3.2-SNAPSHOT.omod /var/lib/OpenMRS/

##Restart Tomcat for the module to be enabled
service tomcat7 restart
