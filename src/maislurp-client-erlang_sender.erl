-module(maislurp-client-erlang_sender).

-export([encode/1]).

-export_type([maislurp-client-erlang_sender/0]).

-type maislurp-client-erlang_sender() ::
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
