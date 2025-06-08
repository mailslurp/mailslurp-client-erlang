-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'url' := binary(),
       'password' => binary(),
       'username' => binary(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'aiTransformId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'healthStatus' => binary(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'url' := Url,
          'password' := Password,
          'username' := Username,
          'inboxId' := InboxId,
          'userId' := UserId,
          'eventName' := EventName,
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'aiTransformId' := AiTransformId,
          'healthStatus' := HealthStatus,
          'phoneNumberId' := PhoneNumberId,
          'name' := Name,
          'id' := Id
        }) ->
    #{ 'url' => Url,
       'password' => Password,
       'username' => Username,
       'inboxId' => InboxId,
       'userId' => UserId,
       'eventName' => EventName,
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'aiTransformId' => AiTransformId,
       'healthStatus' => HealthStatus,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id
     }.
