-module(maislurp-client-erlang_sent_sms_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_sms_projection/0]).

-type maislurp-client-erlang_sent_sms_projection() ::
    #{ 'body' := binary(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'toNumber' := binary(),
       'replyToId' => binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'body' := Body,
          'userId' := UserId,
          'createdAt' := CreatedAt,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'toNumber' := ToNumber,
          'replyToId' := ReplyToId,
          'id' := Id
        }) ->
    #{ 'body' => Body,
       'userId' => UserId,
       'createdAt' => CreatedAt,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'toNumber' => ToNumber,
       'replyToId' => ReplyToId,
       'id' => Id
     }.
