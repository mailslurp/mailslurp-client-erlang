-module(maislurp-client-erlang_scim_patch_request).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_patch_request/0]).

-type maislurp-client-erlang_scim_patch_request() ::
    #{ 'schemas' := list(),
       'Operations' := list()
     }.

encode(#{ 'schemas' := Schemas,
          'Operations' := Operations
        }) ->
    #{ 'schemas' => Schemas,
       'Operations' => Operations
     }.
