-module(maislurp-client-erlang_inbox_retention_policy_run_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_retention_policy_run_dto/0]).

-type maislurp-client-erlang_inbox_retention_policy_run_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'source' := binary(),
       'matchedPolicies' := integer(),
       'appliedPolicies' := integer(),
       'errorMessage' => binary(),
       'startedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'completedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'status' := Status,
          'source' := Source,
          'matchedPolicies' := MatchedPolicies,
          'appliedPolicies' := AppliedPolicies,
          'errorMessage' := ErrorMessage,
          'startedAt' := StartedAt,
          'completedAt' := CompletedAt,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'status' => Status,
       'source' => Source,
       'matchedPolicies' => MatchedPolicies,
       'appliedPolicies' => AppliedPolicies,
       'errorMessage' => ErrorMessage,
       'startedAt' => StartedAt,
       'completedAt' => CompletedAt,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
