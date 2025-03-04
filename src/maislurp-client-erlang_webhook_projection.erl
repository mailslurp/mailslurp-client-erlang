-module(maislurp-client-erlang_webhook_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_webhook_projection/0]).

-type maislurp-client-erlang_webhook_projection() ::
    #{ 'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'url' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'eventName' => binary(),
       'healthStatus' => binary(),
       'phoneNumberId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'name' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'username' => binary(),
       'password' => binary()
     }.

encode(#{ 'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt,
          'url' := Url,
          'userId' := UserId,
          'inboxId' := InboxId,
          'eventName' := EventName,
          'healthStatus' := HealthStatus,
          'phoneNumberId' := PhoneNumberId,
          'name' := Name,
          'id' := Id,
          'username' := Username,
          'password' := Password
        }) ->
    #{ 'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt,
       'url' => Url,
       'userId' => UserId,
       'inboxId' => InboxId,
       'eventName' => EventName,
       'healthStatus' => HealthStatus,
       'phoneNumberId' => PhoneNumberId,
       'name' => Name,
       'id' => Id,
       'username' => Username,
       'password' => Password
     }.
