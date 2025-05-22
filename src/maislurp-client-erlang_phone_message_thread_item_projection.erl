-module(maislurp-client-erlang_phone_message_thread_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_message_thread_item_projection/0]).

-type maislurp-client-erlang_phone_message_thread_item_projection() ::
    #{ 'body' := binary(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'created' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'toPhoneNumber' := binary(),
       'messageDirection' := binary(),
       'fromPhoneNumber' := binary()
     }.

encode(#{ 'body' := Body,
          'phoneNumberId' := PhoneNumberId,
          'created' := Created,
          'toPhoneNumber' := ToPhoneNumber,
          'messageDirection' := MessageDirection,
          'fromPhoneNumber' := FromPhoneNumber
        }) ->
    #{ 'body' => Body,
       'phoneNumberId' => PhoneNumberId,
       'created' => Created,
       'toPhoneNumber' => ToPhoneNumber,
       'messageDirection' => MessageDirection,
       'fromPhoneNumber' => FromPhoneNumber
     }.
