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
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'healthStatus' => binary(),
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
          'updatedAt' := UpdatedAt,
          'createdAt' := CreatedAt,
          'healthStatus' := HealthStatus,
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
       'updatedAt' => UpdatedAt,
       'createdAt' => CreatedAt,
       'healthStatus' => HealthStatus,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id
     }.
