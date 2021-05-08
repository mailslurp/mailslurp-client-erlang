-module(maislurp-client-erlang_webhook_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_dto/0]).

-type maislurp-client-erlang_webhook_dto() ::
    #{ 'basicAuth' => boolean(),
       'createdAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'method' => binary(),
       'name' => binary(),
       'payloadJsonSchema' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'url' => binary()
     }.

encode(#{ 'basicAuth' := BasicAuth,
          'createdAt' := CreatedAt,
          'id' := Id,
          'inboxId' := InboxId,
          'method' := Method,
          'name' := Name,
          'payloadJsonSchema' := PayloadJsonSchema,
          'updatedAt' := UpdatedAt,
          'url' := Url
        }) ->
    #{ 'basicAuth' => BasicAuth,
       'createdAt' => CreatedAt,
       'id' => Id,
       'inboxId' => InboxId,
       'method' => Method,
       'name' => Name,
       'payloadJsonSchema' => PayloadJsonSchema,
       'updatedAt' => UpdatedAt,
       'url' => Url
     }.
