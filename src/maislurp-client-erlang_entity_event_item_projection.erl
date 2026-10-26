-module(maislurp-client-erlang_entity_event_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_entity_event_item_projection/0]).

-type maislurp-client-erlang_entity_event_item_projection() ::
    #{ 'eventType' := binary(),
       'severity' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'eventType' := EventType,
          'severity' := Severity,
          'id' := Id,
          'inboxId' := InboxId,
          'phoneId' := PhoneId
        }) ->
    #{ 'eventType' => EventType,
       'severity' => Severity,
       'id' => Id,
       'inboxId' => InboxId,
       'phoneId' => PhoneId
     }.
