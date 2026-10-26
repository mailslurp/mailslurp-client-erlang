-module(maislurp-client-erlang_scim_group_resource).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_group_resource/0]).

-type maislurp-client-erlang_scim_group_resource() ::
    #{ 'schemas' := list(),
       'id' => binary(),
       'externalId' => binary(),
       'displayName' => binary(),
       'members' => list(),
       'meta' => maislurp-client-erlang_scim_meta:maislurp-client-erlang_scim_meta()
     }.

encode(#{ 'schemas' := Schemas,
          'id' := Id,
          'externalId' := ExternalId,
          'displayName' := DisplayName,
          'members' := Members,
          'meta' := Meta
        }) ->
    #{ 'schemas' => Schemas,
       'id' => Id,
       'externalId' => ExternalId,
       'displayName' => DisplayName,
       'members' => Members,
       'meta' => Meta
     }.
