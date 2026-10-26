-module(maislurp-client-erlang_automated_inbox_placement_provider_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_automated_inbox_placement_provider_dto/0]).

-type maislurp-client-erlang_automated_inbox_placement_provider_dto() ::
    #{ 'provider' := binary(),
       'displayName' := binary(),
       'availability' := binary(),
       'credentialType' := binary()
     }.

encode(#{ 'provider' := Provider,
          'displayName' := DisplayName,
          'availability' := Availability,
          'credentialType' := CredentialType
        }) ->
    #{ 'provider' => Provider,
       'displayName' => DisplayName,
       'availability' => Availability,
       'credentialType' => CredentialType
     }.
