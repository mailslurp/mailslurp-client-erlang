-module(maislurp-client-erlang_scim_name).

-export([encode/1]).

-export_type([maislurp-client-erlang_scim_name/0]).

-type maislurp-client-erlang_scim_name() ::
    #{ 'formatted' => binary(),
       'givenName' => binary(),
       'familyName' => binary()
     }.

encode(#{ 'formatted' := Formatted,
          'givenName' := GivenName,
          'familyName' := FamilyName
        }) ->
    #{ 'formatted' => Formatted,
       'givenName' => GivenName,
       'familyName' => FamilyName
     }.
