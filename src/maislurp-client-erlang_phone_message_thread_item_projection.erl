-module(maislurp-client-erlang_phone_message_thread_item_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_message_thread_item_projection/0]).

-type maislurp-client-erlang_phone_message_thread_item_projection() ::
    #{ 'body' := binary(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'created' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'messageDirection' := binary(),
       'toPhoneNumber' := binary(),
       'fromPhoneNumber' := binary()
     }.

encode(#{ 'body' := Body,
          'phoneNumberId' := PhoneNumberId,
          'created' := Created,
          'messageDirection' := MessageDirection,
          'toPhoneNumber' := ToPhoneNumber,
          'fromPhoneNumber' := FromPhoneNumber
        }) ->
    #{ 'body' => Body,
       'phoneNumberId' => PhoneNumberId,
       'created' => Created,
       'messageDirection' => MessageDirection,
       'toPhoneNumber' => ToPhoneNumber,
       'fromPhoneNumber' => FromPhoneNumber
     }.
