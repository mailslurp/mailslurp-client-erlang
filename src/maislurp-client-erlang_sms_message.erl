-module(maislurp-client-erlang_sms_message).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_message/0]).

-type maislurp-client-erlang_sms_message() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'body' := binary(),
       'read' := boolean(),
       'sid' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'body' := Body,
          'read' := Read,
          'sid' := Sid,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'body' => Body,
       'read' => Read,
       'sid' => Sid,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
