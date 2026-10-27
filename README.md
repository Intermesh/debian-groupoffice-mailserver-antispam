# debian-groupoffice-mailserver-antispam
Anti spam and anti virus services for the GroupOffice mailserver.

To build:
1. Edit debian/changelog with version and repo twentysixzero.
2. run inside directory:
   ```
   debuild --no-lintian -b
   ```
3. run:
   ```
   reprepro -b /var/www/build/deploy/reprepro include twentysixzero ../groupoffice-mailserver-antispam_25.0.3_amd64.changes
   ```
4. Repeat all steps with 63-php-71 in debian/changelog and command


Build with docker (Replace /Volumes/Projects with your output dir):

```
docker run --rm -v /Volumes/Projects:/build -w /build/debian-groupoffice-mailserver-antispam debian:trixie bash -c 'apt-get update && apt-get install -y devscripts debhelper && debuild --no-lintian -b -us -uc'
```