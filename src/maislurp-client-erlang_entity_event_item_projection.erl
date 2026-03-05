-module(maislurp-client-erlang_entity_event_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_event_item_projection/0]).

-type maislurp-client-erlang_entity_event_item_projection() ::
    #{ 'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventType' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'severity' := binary()
     }.

encode(#{ 'phoneId' := PhoneId,
          'inboxId' := InboxId,
          'eventType' := EventType,
          'id' := Id,
          'severity' := Severity
        }) ->
    #{ 'phoneId' => PhoneId,
       'inboxId' => InboxId,
       'eventType' => EventType,
       'id' => Id,
       'severity' => Severity
     }.
