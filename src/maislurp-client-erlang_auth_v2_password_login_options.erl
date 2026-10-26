-module(maislurp-client-erlang_auth_v2_password_login_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_auth_v2_password_login_options/0]).

-type maislurp-client-erlang_auth_v2_password_login_options() ::
    #{ 'emailAddress' := binary(),
       'password' := binary(),
       'organizationSlug' => binary(),
       'returnTo' => binary()
     }.

encode(#{ 'emailAddress' := EmailAddress,
          'password' := Password,
          'organizationSlug' := OrganizationSlug,
          'returnTo' := ReturnTo
        }) ->
    #{ 'emailAddress' => EmailAddress,
       'password' => Password,
       'organizationSlug' => OrganizationSlug,
       'returnTo' => ReturnTo
     }.
