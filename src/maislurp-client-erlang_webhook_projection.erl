-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'url' := binary()
     }.

encode(#{ 'inboxId' := InboxId,
          'eventName' := EventName,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'phoneNumberId' := PhoneNumberId,
          'name' := Name,
          'id' := Id,
          'url' := Url
        }) ->
    #{ 'inboxId' => InboxId,
       'eventName' => EventName,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id,
       'url' => Url
     }.
