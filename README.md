**Application**

[NZBHydra website](https://github.com/theotherp/nzbhydra)

**Description**

NZBHydra is a meta search for NZB indexers. It provides easy access to a number of raw and newznab based indexers. You can search all your indexers from one place and use it as indexer source for tools like Sonarr or CouchPotato.

**Build notes**

Latest stable NZBHydra release from Arch User Repository (AUR).

**Usage**
```
docker run -d \
    -p 5075:5075 \
    --name=<container name> \
    -v <path for media files>:/media \
    -v <path for data files>:/data \
    -v <path for config files>:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=<umask for created files> \
    -e PUID=<UID for user> \
    -e PGID=<GID for user> \
    binhex/arch-nzbhydra
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`http://<host ip>:5075`

**Example**
```
docker run -d \
    -p 5075:5075 \
    --name=nzbhydra \
    -v /media/tv:/media \
    -v /apps/docker/sabnzbd/watched:/data \
    -v /apps/docker/nzbhydra:/config \
    -v /etc/localtime:/etc/localtime:ro \
    -e UMASK=000 \
    -e PUID=0 \
    -e PGID=0 \
    binhex/arch-nzbhydra
```

**Notes**

User ID (PUID) and Group ID (PGID) can be found by issuing the following command for the user you want to run the container as:-

```
id <username>
```
___
If you appreciate my work, then please consider buying me a beer  :D

[![PayPal donation](https://www.paypal.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MM5E27UX6AUU4)

[Support forum](https://forums.lime-technology.com/topic/62378-support-binhex-nzbhdra/)
