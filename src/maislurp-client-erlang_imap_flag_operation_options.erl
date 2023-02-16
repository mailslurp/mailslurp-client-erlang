-module(maislurp-client-erlang_imap_flag_operation_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_imap_flag_operation_options/0]).

-type maislurp-client-erlang_imap_flag_operation_options() ::
    #{ 'flagOperation' := binary(),
       'flags' := list()
     }.

encode(#{ 'flagOperation' := FlagOperation,
          'flags' := Flags
        }) ->
    #{ 'flagOperation' => FlagOperation,
       'flags' => Flags
     }.
