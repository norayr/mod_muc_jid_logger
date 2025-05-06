some spammers jump in to public mucs, pollute and jump out immediately.

this module helps to prosody administrator to log who joined the room.

to add:

put that in your modules directory.

```
Component "conference.example.com" "muc"
    modules_enabled = {
        -- other modules
        "muc_jid_logger";
    }

```


reload prosody

```
/etc/init.d/prosody reload
```


