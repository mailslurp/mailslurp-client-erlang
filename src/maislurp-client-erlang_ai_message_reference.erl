-module(maislurp-client-erlang_ai_message_reference).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_reference/0]).

-type maislurp-client-erlang_ai_message_reference() ::
    #{ 'type' := binary(),
       'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'type' := Type,
          'id' := Id
        }) ->
    #{ 'type' => Type,
       'id' => Id
     }.
