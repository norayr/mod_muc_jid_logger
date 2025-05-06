some spammers jump in to public mucs, pollute and jump out immediately.

this module helps prosody administrator to log who joined the room.

to add:

### copy the module
put module `mod_muc_jid_logger.lua` in to your modules directory.

### add config
```
Component "conference.example.com" "muc"
    modules_enabled = {
        -- other modules
        "muc_jid_logger";
    }

```

### reload prosody

```
/etc/init.d/prosody reload
```


