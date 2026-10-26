-module(maislurp-client-erlang_sent_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_sms_projection/0]).

-type maislurp-client-erlang_sent_sms_projection() ::
    #{ 'body' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'fromNumber' := binary(),
       'toNumber' := binary(),
       'replyToId' => binary()
     }.

encode(#{ 'body' := Body,
          'id' := Id,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'createdAt' := CreatedAt,
          'fromNumber' := FromNumber,
          'toNumber' := ToNumber,
          'replyToId' := ReplyToId
        }) ->
    #{ 'body' => Body,
       'id' => Id,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'createdAt' => CreatedAt,
       'fromNumber' => FromNumber,
       'toNumber' => ToNumber,
       'replyToId' => ReplyToId
     }.
