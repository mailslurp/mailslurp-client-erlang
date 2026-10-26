-module(maislurp-client-erlang_scim_user_resource).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_user_resource/0]).

-type maislurp-client-erlang_scim_user_resource() ::
    #{ 'schemas' := list(),
       'id' => binary(),
       'externalId' => binary(),
       'userName' => binary(),
       'name' => maislurp-client-erlang_scim_name:maislurp-client-erlang_scim_name(),
       'displayName' => binary(),
       'emails' => list(),
       'active' => boolean(),
       'meta' => maislurp-client-erlang_scim_meta:maislurp-client-erlang_scim_meta()
     }.

encode(#{ 'schemas' := Schemas,
          'id' := Id,
          'externalId' := ExternalId,
          'userName' := UserName,
          'name' := Name,
          'displayName' := DisplayName,
          'emails' := Emails,
          'active' := Active,
          'meta' := Meta
        }) ->
    #{ 'schemas' => Schemas,
       'id' => Id,
       'externalId' => ExternalId,
       'userName' => UserName,
       'name' => Name,
       'displayName' => DisplayName,
       'emails' => Emails,
       'active' => Active,
       'meta' => Meta
     }.
