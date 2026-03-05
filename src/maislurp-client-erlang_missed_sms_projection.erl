-module(maislurp-client-erlang_missed_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_missed_sms_projection/0]).

-type maislurp-client-erlang_missed_sms_projection() ::
    #{ 'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sid' := binary(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'userId' := UserId,
          'createdAt' := CreatedAt,
          'sid' := Sid,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'id' := Id
        }) ->
    #{ 'userId' => UserId,
       'createdAt' => CreatedAt,
       'sid' => Sid,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'id' => Id
     }.
