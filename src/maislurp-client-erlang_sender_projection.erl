-module(maislurp-client-erlang_sender_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_sender_projection/0]).

-type maislurp-client-erlang_sender_projection() ::
    #{ 'emailAddress' := binary(),
       'rawValue' := binary(),
       'name' => binary()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'rawValue' := RawValue,
          'name' := Name
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'rawValue' => RawValue,
       'name' => Name
     }.
