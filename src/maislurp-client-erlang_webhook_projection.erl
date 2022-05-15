-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'url' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'url' := Url,
          'createdAt' := CreatedAt,
          'inboxId' := InboxId,
          'eventName' := EventName,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'url' => Url,
       'createdAt' => CreatedAt,
       'inboxId' => InboxId,
       'eventName' => EventName,
       'updatedAt' => UpdatedAt
     }.
