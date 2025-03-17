# cleanupssh

cleanup a .ssh directory, set permissions, clean up known_hosts, create backup of critical files


## TL;DR


### To install:

```sh
sudo make install
```

### For a demo, try:

```sh
rm -rf RMME; cp -r ~/.ssh RMME 2>/dev/null

/usr/local/sbin/cleanupssh -n -v -f RMME

/usr/local/sbin/cleanupssh -v -f RMME

/usr/local/sbin/cleanupssh -f RMME

/usr/local/sbin/cleanupssh RMME

rm -rf RMME
```

# Typical use:

```sh
/usr/local/sbin/cleanupssh ~/.ssh
```


## Usage

```
/usr/local/sbin/cleanupssh [-n] [-v] [-f] [-i] [-t] [-s] [-S] [-C] [-d] [-p khc_path]
			[-P python3] [-2 sha256_path] [-c user[:group]] [-V] [-h] dir

    -n		Do nothing (def: do)
    -v		Verbose mode (def: quiet)

    -f		Force cleanup if missing: authorized_keys config id_rsa id_rsa.pub known_hosts
		    NOTE: if id_rsa.LOCKED exists, OK if id_rsa is missing
		    NOTE: if id_rsa.pub.LOCKED exists, OK if id_rsa.pub is missing
    -i		Do not warn if missing:   authorized_keys config id_rsa id_rsa.pub known_hosts
		    NOTE: -i implies -f
    -t		Touch to form empty authorized_keys config known_hosts if missing (def: do not touch)
		    NOTE: if authorized_keys.LOCKED exists, authorized_keys is not touched
    -s		Do not unique sort and cleanup authorized_keys (def: do)
    -S		Do not unique sort and cleanup known_hosts (def: do with known_hosts_cleanup)
    -C		Do not clean up nfs files AND
		    do not clean up OLD *.Mon files AND
		    do not rename OLD yymmdd.hhmms files to 20yymmdd.hhmmss AND
		    do not rename OLD yymmdd files to 20yymmdd (def: do)
    -d		Do not remove duplicate files under the from and OLD sub-directories (def: no)

    -p khc_path		Absolute path to known_hosts_cleanup (def: /usr/local/sbin/known_hosts_cleanup)
    -P python3		Absolute path to python3 (def: search for /opt/homebrew/bin/python3)
    -2 sha256_path	Absolute path to sha256sum (def: /opt/homebrew/var/homebrew/linked/coreutils/libexec/gnubin/sha256sum)

    -c user[:group]	Chown critical files as user:group (def: do not chown)
			    NOTE: Ignored if UID != 0 (i.e., not root)

    -V		Print version and exit
    -h		Print this messages and exit

    dir		The .ssh directory to clean up

/usr/local/sbin/cleanupssh version: 3.4.0 2025-03-16
```


## Reporting Security Issues

To report a security issue, please visit "[Reporting Security Issues](https://github.com/lcn2/cleanupssh/security/policy)".
