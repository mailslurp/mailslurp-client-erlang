-module(maislurp-client-erlang_phone_message_thread_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_message_thread_projection/0]).

-type maislurp-client-erlang_phone_message_thread_projection() ::
    #{ 'phoneNumber' => binary(),
       'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'otherPhoneNumber' => binary(),
       'lastMessageDirection' := binary(),
       'lastBody' := binary(),
       'lastCreated' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'phoneNumber' := PhoneNumber,
          'phoneNumberId' := PhoneNumberId,
          'otherPhoneNumber' := OtherPhoneNumber,
          'lastMessageDirection' := LastMessageDirection,
          'lastBody' := LastBody,
          'lastCreated' := LastCreated
        }) ->
    #{ 'phoneNumber' => PhoneNumber,
       'phoneNumberId' => PhoneNumberId,
       'otherPhoneNumber' => OtherPhoneNumber,
       'lastMessageDirection' => LastMessageDirection,
       'lastBody' => LastBody,
       'lastCreated' => LastCreated
     }.
