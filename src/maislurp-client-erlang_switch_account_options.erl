-module(maislurp-client-erlang_switch_account_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_switch_account_options/0]).

-type maislurp-client-erlang_switch_account_options() ::
    #{ 'targetAccountId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'organizationSlug' => binary()
     }.

encode(#{ 'targetAccountId' := TargetAccountId,
          'organizationSlug' := OrganizationSlug
        }) ->
    #{ 'targetAccountId' => TargetAccountId,
       'organizationSlug' => OrganizationSlug
     }.
