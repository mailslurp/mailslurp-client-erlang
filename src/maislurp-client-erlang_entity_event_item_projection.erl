-module(maislurp-client-erlang_entity_event_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_event_item_projection/0]).

-type maislurp-client-erlang_entity_event_item_projection() ::
    #{ 'eventType' := binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'severity' := binary()
     }.

encode(#{ 'eventType' := EventType,
          'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'id' := Id,
          'severity' := Severity
        }) ->
    #{ 'eventType' => EventType,
       'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'id' => Id,
       'severity' => Severity
     }.
