# debian-groupoffice-mailserver-antispam
Anti spam and anti virus services for the GroupOffice mailserver.

To build:
1. Edit debian/changelog with version and repo twentysixzero.
2. run inside directory:
   ```
   debuild --no-lintian -A
   ```
3. run:
   ```
   reprepro -b /var/www/build/groupoffice/build/deploy/reprepro/ include twentysixzero ../groupoffice-mailserver-antispam_25.0.3_amd64.changes
   ```

   or for testing:
   ```
   reprepro -b /var/www/build/groupoffice/build/deploy/reprepro/ include testing ../groupoffice-mailserver-antispam_25.1.0_amd64.changes
   ```
4. Repeat all steps with 63-php-71 in debian/changelog and command


Build with docker (Replace /Volumes/Projects with your output dir).

Create the build image once (repeat to update it):

```
docker build -t groupoffice-debbuild - <<'EOF'
FROM debian:trixie
RUN apt-get update && apt-get install -y --no-install-recommends build-essential devscripts debhelper fakeroot && rm -rf /var/lib/apt/lists/*
EOF
```

Then build the package:

```
docker run --rm -v /Volumes/Projects:/build -w /build/debian-groupoffice-mailserver-antispam groupoffice-debbuild debuild --no-lintian -b -us -uc
```