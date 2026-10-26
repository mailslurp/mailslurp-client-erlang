-module(maislurp-client-erlang_agent_capability_limits_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_capability_limits_dto/0]).

-type maislurp-client-erlang_agent_capability_limits_dto() ::
    #{ 'maxConversationPageSize' := integer(),
       'maxThreadPageSize' := integer(),
       'maxEventBatchSize' := integer(),
       'maxLongPollSeconds' := integer(),
       'maxClaimLeaseSeconds' := integer()
     }.

encode(#{ 'maxConversationPageSize' := MaxConversationPageSize,
          'maxThreadPageSize' := MaxThreadPageSize,
          'maxEventBatchSize' := MaxEventBatchSize,
          'maxLongPollSeconds' := MaxLongPollSeconds,
          'maxClaimLeaseSeconds' := MaxClaimLeaseSeconds
        }) ->
    #{ 'maxConversationPageSize' => MaxConversationPageSize,
       'maxThreadPageSize' => MaxThreadPageSize,
       'maxEventBatchSize' => MaxEventBatchSize,
       'maxLongPollSeconds' => MaxLongPollSeconds,
       'maxClaimLeaseSeconds' => MaxClaimLeaseSeconds
     }.
