-- mod_muc_jid_logger.lua
module:log("info", "Loaded MUC JID logger module");

local function log_join(event)
    local room = event.room;
    local stanza = event.stanza;
    local nick = event.nick;
    local real_jid = event.origin and event.origin.full_jid or "unknown";
    module:log("info", "[JOIN] Room: %s | Nick: %s | JID: %s", room.jid, nick, real_jid);
end

local function log_leave(event)
    local room = event.room;
    local occupant = event.occupant;
    if occupant then
        local nick = occupant.nick;
        local real_jid = occupant.jid or "unknown";
        module:log("info", "[LEAVE] Room: %s | Nick: %s | JID: %s", room.jid, nick, real_jid);
    end
end

module:hook("muc-occupant-pre-join", log_join);
module:hook("muc-occupant-left", log_leave);

