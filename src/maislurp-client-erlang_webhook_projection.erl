-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'eventName' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'url' := binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'eventName' := EventName,
          'id' := Id,
          'inboxId' := InboxId,
          'name' := Name,
          'updatedAt' := UpdatedAt,
          'url' := Url
        }) ->
    #{ 'createdAt' => CreatedAt,
       'eventName' => EventName,
       'id' => Id,
       'inboxId' => InboxId,
       'name' => Name,
       'updatedAt' => UpdatedAt,
       'url' => Url
     }.
