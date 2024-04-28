-module(maislurp-client-erlang_sent_sms_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_sent_sms_dto/0]).

-type maislurp-client-erlang_sent_sms_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'userId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneNumber' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromNumber' := binary(),
       'toNumber' := binary(),
       'body' := binary(),
       'sid' := binary(),
       'replyToSid' := binary(),
       'replyToId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'userId' := UserId,
          'phoneNumber' := PhoneNumber,
          'fromNumber' := FromNumber,
          'toNumber' := ToNumber,
          'body' := Body,
          'sid' := Sid,
          'replyToSid' := ReplyToSid,
          'replyToId' := ReplyToId,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'userId' => UserId,
       'phoneNumber' => PhoneNumber,
       'fromNumber' => FromNumber,
       'toNumber' => ToNumber,
       'body' => Body,
       'sid' => Sid,
       'replyToSid' => ReplyToSid,
       'replyToId' => ReplyToId,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
