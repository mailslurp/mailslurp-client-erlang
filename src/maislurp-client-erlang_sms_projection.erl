-module(maislurp-client-erlang_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_projection/0]).

-type maislurp-client-erlang_sms_projection() ::
    #{ 'body' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'read' := boolean(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'fromNumber' := binary()
     }.

encode(#{ 'body' := Body,
          'id' := Id,
          'userId' := UserId,
          'read' := Read,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'fromNumber' := FromNumber
        }) ->
    #{ 'body' => Body,
       'id' => Id,
       'userId' => UserId,
       'read' => Read,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'fromNumber' => FromNumber
     }.
