-module(maislurp-client-erlang_recipient).

-export([encode/1]).

-export_type([maislurp-client-erlang_recipient/0]).

-type maislurp-client-erlang_recipient() ::
    #{ 'rawValue' => binary(),
       'emailAddress' => binary(),
       'name' => binary()
     }.

encode(#{ 'rawValue' := RawValue,
          'emailAddress' := EmailAddress,
          'name' := Name
        }) ->
    #{ 'rawValue' => RawValue,
       'emailAddress' => EmailAddress,
       'name' => Name
     }.
