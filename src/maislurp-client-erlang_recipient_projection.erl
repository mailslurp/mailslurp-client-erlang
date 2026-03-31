-module(maislurp-client-erlang_recipient_projection).

-export([encode/1]).

-export_type([maislurp-client-erlang_recipient_projection/0]).

-type maislurp-client-erlang_recipient_projection() ::
    #{ 'name' => binary(),
       'emailAddress' := binary(),
       'rawValue' := binary()
     }.

encode(#{ 'name' := Name,
          'emailAddress' := EmailAddress,
          'rawValue' := RawValue
        }) ->
    #{ 'name' => Name,
       'emailAddress' => EmailAddress,
       'rawValue' => RawValue
     }.
