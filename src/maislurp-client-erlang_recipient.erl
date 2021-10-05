-module(maislurp-client-erlang_recipient).

-export([encode/1]).

-export_type([maislurp-client-erlang_recipient/0]).

-type maislurp-client-erlang_recipient() ::
    #{ 'emailAddress' := binary(),
       'name' => binary(),
       'rawValue' := binary()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'name' := Name,
          'rawValue' := RawValue
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'name' => Name,
       'rawValue' => RawValue
     }.
