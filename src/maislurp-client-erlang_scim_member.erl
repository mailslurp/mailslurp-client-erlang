-module(maislurp-client-erlang_scim_member).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_member/0]).

-type maislurp-client-erlang_scim_member() ::
    #{ 'value' := binary(),
       'ref' => binary(),
       'display' => binary()
     }.

encode(#{ 'value' := Value,
          'ref' := Ref,
          'display' := Display
        }) ->
    #{ 'value' => Value,
       '$ref' => Ref,
       'display' => Display
     }.
