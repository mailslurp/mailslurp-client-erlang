-module(maislurp-client-erlang_scim_patch_operation).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_patch_operation/0]).

-type maislurp-client-erlang_scim_patch_operation() ::
    #{ 'op' => binary(),
       'path' => binary(),
       'value' => maps:map()
     }.

encode(#{ 'op' := Op,
          'path' := Path,
          'value' := Value
        }) ->
    #{ 'op' => Op,
       'path' => Path,
       'value' => Value
     }.
