-module(maislurp-client-erlang_sender).

-export([encode/1]).

-export_type([maislurp-client-erlang_sender/0]).

-type maislurp-client-erlang_sender() ::
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
