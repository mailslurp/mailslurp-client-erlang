-module(maislurp-client-erlang_scim_email).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_email/0]).

-type maislurp-client-erlang_scim_email() ::
    #{ 'value' := binary(),
       'primary' => boolean(),
       'type' => binary()
     }.

encode(#{ 'value' := Value,
          'primary' := Primary,
          'type' := Type
        }) ->
    #{ 'value' => Value,
       'primary' => Primary,
       'type' => Type
     }.
