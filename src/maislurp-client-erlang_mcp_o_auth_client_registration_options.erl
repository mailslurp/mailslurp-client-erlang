-module(maislurp-client-erlang_mcp_o_auth_client_registration_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_mcp_o_auth_client_registration_options/0]).

-type maislurp-client-erlang_mcp_o_auth_client_registration_options() ::
    #{ 'client_name' := binary(),
       'redirect_uris' := list(),
       'token_endpoint_auth_method' := binary(),
       'grant_types' := list(),
       'response_types' := list()
     }.

encode(#{ 'client_name' := ClientName,
          'redirect_uris' := RedirectUris,
          'token_endpoint_auth_method' := TokenEndpointAuthMethod,
          'grant_types' := GrantTypes,
          'response_types' := ResponseTypes
        }) ->
    #{ 'client_name' => ClientName,
       'redirect_uris' => RedirectUris,
       'token_endpoint_auth_method' => TokenEndpointAuthMethod,
       'grant_types' => GrantTypes,
       'response_types' => ResponseTypes
     }.
