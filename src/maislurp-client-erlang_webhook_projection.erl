-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'url' := binary(),
       'password' => binary(),
       'username' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'enabled' => boolean(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'aiTransformerId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'healthStatus' => binary()
     }.

encode(#{ 'name' := Name,
          'id' := Id,
          'eventName' := EventName,
          'url' := Url,
          'password' := Password,
          'username' := Username,
          'userId' := UserId,
          'inboxId' := InboxId,
          'enabled' := Enabled,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'aiTransformerId' := AiTransformerId,
          'phoneNumberId' := PhoneNumberId,
          'aiTransformId' := AiTransformId,
          'healthStatus' := HealthStatus
        }) ->
    #{ 'name' => Name,
       'id' => Id,
       'eventName' => EventName,
       'url' => Url,
       'password' => Password,
       'username' => Username,
       'userId' => UserId,
       'inboxId' => InboxId,
       'enabled' => Enabled,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'aiTransformerId' => AiTransformerId,
       'phoneNumberId' => PhoneNumberId,
       'aiTransformId' => AiTransformId,
       'healthStatus' => HealthStatus
     }.
