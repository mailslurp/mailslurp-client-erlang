-module(maislurp-client-erlang_webhook_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_dto/0]).

-type maislurp-client-erlang_webhook_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'basicAuth' => boolean(),
       'name' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'url' => binary(),
       'method' => binary(),
       'payloadJsonSchema' => binary(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'eventName' => binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'basicAuth' := BasicAuth,
          'name' := Name,
          'inboxId' := InboxId,
          'url' := Url,
          'method' := Method,
          'payloadJsonSchema' := PayloadJsonSchema,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'eventName' := EventName
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'basicAuth' => BasicAuth,
       'name' => Name,
       'inboxId' => InboxId,
       'url' => Url,
       'method' => Method,
       'payloadJsonSchema' => PayloadJsonSchema,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'eventName' => EventName
     }.
