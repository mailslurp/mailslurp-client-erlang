-module(maislurp-client-erlang_create_inbox_retention_policy_for_account_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_retention_policy_for_account_options/0]).

-type maislurp-client-erlang_create_inbox_retention_policy_for_account_options() ::
    #{ 'retentionDays' := integer()
     }.

encode(#{ 'retentionDays' := RetentionDays
        }) ->
    #{ 'retentionDays' => RetentionDays
     }.
