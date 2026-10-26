-module(maislurp-client-erlang_inbox_retention_policy_optional_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_retention_policy_optional_dto/0]).

-type maislurp-client-erlang_inbox_retention_policy_optional_dto() ::
    #{ 'policy' => maislurp-client-erlang_inbox_retention_policy_dto:maislurp-client-erlang_inbox_retention_policy_dto()
     }.

encode(#{ 'policy' := Policy
        }) ->
    #{ 'policy' => Policy
     }.
