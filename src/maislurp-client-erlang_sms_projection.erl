-module(maislurp-client-erlang_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_projection/0]).

-type maislurp-client-erlang_sms_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'read' := boolean(),
       'fromNumber' := binary()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'read' := Read,
          'fromNumber' := FromNumber
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'read' => Read,
       'fromNumber' => FromNumber
     }.
