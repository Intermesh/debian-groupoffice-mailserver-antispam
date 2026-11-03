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
   reprepro -b /var/www/build/groupoffice/build/deploy/reprepro/ include twentyfivezero ../groupoffice-mailserver-antispam_25.0.1_amd64.changes  
   ```
4. Repeat all steps with 63-php-71 in debian/changelog and command
