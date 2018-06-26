# debian-groupoffice-mailserver-antispam
Anti spam and anti virus services for the Group-Office mailserver.

To build:
1. Edit debian/changelog with version and repo 63-php-70.
2. run inside directory:
   ```
   debuild --no-lintian -b
   ```
3. run:
   ```
   reprepro -b /var/www/build/deploy/reprepro include 63-php-70 ../groupoffice-mailserver-antispam_6.3.1-php-70_amd64.changes
   ```
4. Repeat all steps with 63-php-71 in debian/changelog and command
