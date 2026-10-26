-module(maislurp-client-erlang_phone_message_thread_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_message_thread_item_projection/0]).

-type maislurp-client-erlang_phone_message_thread_item_projection() ::
    #{ 'fromPhoneNumber' := binary(),
       'toPhoneNumber' := binary(),
       'body' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'created' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageDirection' := binary()
     }.

encode(#{ 'fromPhoneNumber' := FromPhoneNumber,
          'toPhoneNumber' := ToPhoneNumber,
          'body' := Body,
          'id' := Id,
          'created' := Created,
          'phoneNumberId' := PhoneNumberId,
          'messageDirection' := MessageDirection
        }) ->
    #{ 'fromPhoneNumber' => FromPhoneNumber,
       'toPhoneNumber' => ToPhoneNumber,
       'body' => Body,
       'id' => Id,
       'created' => Created,
       'phoneNumberId' => PhoneNumberId,
       'messageDirection' => MessageDirection
     }.
