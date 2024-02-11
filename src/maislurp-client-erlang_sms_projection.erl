-module(maislurp-client-erlang_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_projection/0]).

-type maislurp-client-erlang_sms_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'read' := boolean(),
       'body' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'read' := Read,
          'body' := Body,
          'createdAt' := CreatedAt,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'read' => Read,
       'body' => Body,
       'createdAt' => CreatedAt,
       'id' => Id
     }.
