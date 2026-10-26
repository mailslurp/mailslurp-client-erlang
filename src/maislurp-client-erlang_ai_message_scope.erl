-module(maislurp-client-erlang_ai_message_scope).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_scope/0]).

-type maislurp-client-erlang_ai_message_scope() ::
    #{ 'inboxIds' := list(),
       'phoneNumberIds' := list()
     }.

encode(#{ 'inboxIds' := InboxIds,
          'phoneNumberIds' := PhoneNumberIds
        }) ->
    #{ 'inboxIds' => InboxIds,
       'phoneNumberIds' => PhoneNumberIds
     }.
