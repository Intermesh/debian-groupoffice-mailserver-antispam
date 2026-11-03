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



# Build local deb with docker

Build with docker (Replace /Volumes/Projects with your output dir):

Create the build image once (repeat to update it):

```
docker build -t groupoffice-debbuild - <<'EOF'
FROM debian:trixie
RUN apt-get update && apt-get install -y --no-install-recommends build-essential devscripts debhelper fakeroot && rm -rf /var/lib/apt/lists/*
EOF
```

```
docker run --rm -v /Volumes/Projects:/build -w /build/debian-groupoffice-mailserver-antispam groupoffice-debbuild debuild --no-lintian -b -us -uc
```

