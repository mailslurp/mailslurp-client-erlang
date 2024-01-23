-module(maislurp-client-erlang_sms_preview).

-export([encode/1]).

-export_type([maislurp-client-erlang_sms_preview/0]).

-type maislurp-client-erlang_sms_preview() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'body' := binary(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'body' := Body,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'createdAt' := CreatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'body' => Body,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'createdAt' => CreatedAt
     }.
