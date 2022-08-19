-module(maislurp-client-erlang_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_projection/0]).

-type maislurp-client-erlang_sms_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'body' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'fromNumber' := binary(),
       'read' := boolean()
     }.

encode(#{ 'id' := Id,
          'body' := Body,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'fromNumber' := FromNumber,
          'read' := Read
        }) ->
    #{ 'id' => Id,
       'body' => Body,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'fromNumber' => FromNumber,
       'read' => Read
     }.
