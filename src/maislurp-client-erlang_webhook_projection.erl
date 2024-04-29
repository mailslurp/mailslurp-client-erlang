-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'url' := binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'url' := Url,
          'inboxId' := InboxId,
          'eventName' := EventName,
          'phoneNumberId' := PhoneNumberId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'url' => Url,
       'inboxId' => InboxId,
       'eventName' => EventName,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id
     }.
