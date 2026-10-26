-module(maislurp-client-erlang_renew_agent_conversation_claim_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_renew_agent_conversation_claim_options/0]).

-type maislurp-client-erlang_renew_agent_conversation_claim_options() ::
    #{ 'leaseSeconds' := integer()
     }.

encode(#{ 'leaseSeconds' := LeaseSeconds
        }) ->
    #{ 'leaseSeconds' => LeaseSeconds
     }.
