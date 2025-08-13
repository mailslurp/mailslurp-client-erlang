-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'url' := binary(),
       'password' => binary(),
       'username' => binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'healthStatus' => binary(),
       'aiTransformerId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'url' := Url,
          'password' := Password,
          'username' := Username,
          'userId' := UserId,
          'inboxId' := InboxId,
          'eventName' := EventName,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'healthStatus' := HealthStatus,
          'aiTransformerId' := AiTransformerId,
          'aiTransformId' := AiTransformId,
          'phoneNumberId' := PhoneNumberId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'url' => Url,
       'password' => Password,
       'username' => Username,
       'userId' => UserId,
       'inboxId' => InboxId,
       'eventName' => EventName,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'healthStatus' => HealthStatus,
       'aiTransformerId' => AiTransformerId,
       'aiTransformId' => AiTransformId,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id
     }.
