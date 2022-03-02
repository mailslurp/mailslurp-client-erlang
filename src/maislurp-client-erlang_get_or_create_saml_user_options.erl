-module(maislurp-client-erlang_get_or_create_saml_user_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_get_or_create_saml_user_options/0]).

-type maislurp-client-erlang_get_or_create_saml_user_options() ::
    #{ 'issuer' := binary(),
       'nameId' := binary(),
       'nameIdFormat' => binary()
     }.

encode(#{ 'issuer' := Issuer,
          'nameId' := NameId,
          'nameIdFormat' := NameIdFormat
        }) ->
    #{ 'issuer' => Issuer,
       'nameId' => NameId,
       'nameIdFormat' => NameIdFormat
     }.
