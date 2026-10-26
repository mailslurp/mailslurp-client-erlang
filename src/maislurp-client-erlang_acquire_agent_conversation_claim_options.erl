-module(maislurp-client-erlang_acquire_agent_conversation_claim_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_acquire_agent_conversation_claim_options/0]).

-type maislurp-client-erlang_acquire_agent_conversation_claim_options() ::
    #{ 'workerId' := binary(),
       'leaseSeconds' := integer(),
       'expectedVersion' => integer()
     }.

encode(#{ 'workerId' := WorkerId,
          'leaseSeconds' := LeaseSeconds,
          'expectedVersion' := ExpectedVersion
        }) ->
    #{ 'workerId' => WorkerId,
       'leaseSeconds' => LeaseSeconds,
       'expectedVersion' => ExpectedVersion
     }.
