-module(maislurp-client-erlang_phone_message_thread_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_message_thread_item_projection/0]).

-type maislurp-client-erlang_phone_message_thread_item_projection() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'body' := binary(),
       'created' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'messageDirection' := binary(),
       'fromPhoneNumber' := binary(),
       'toPhoneNumber' := binary()
     }.

encode(#{ 'id' := Id,
          'body' := Body,
          'created' := Created,
          'phoneNumberId' := PhoneNumberId,
          'messageDirection' := MessageDirection,
          'fromPhoneNumber' := FromPhoneNumber,
          'toPhoneNumber' := ToPhoneNumber
        }) ->
    #{ 'id' => Id,
       'body' => Body,
       'created' => Created,
       'phoneNumberId' => PhoneNumberId,
       'messageDirection' => MessageDirection,
       'fromPhoneNumber' => FromPhoneNumber,
       'toPhoneNumber' => ToPhoneNumber
     }.
