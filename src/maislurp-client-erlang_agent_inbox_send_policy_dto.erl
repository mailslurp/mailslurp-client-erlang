-module(maislurp-client-erlang_agent_inbox_send_policy_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_inbox_send_policy_dto/0]).

-type maislurp-client-erlang_agent_inbox_send_policy_dto() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipients' := list(),
       'allowed' := boolean(),
       'reasonCode' => binary(),
       'blockingRulesetIds' := list(),
       'operatorUrl' := binary()
     }.

encode(#{ 'inboxId' := InboxId,
          'recipients' := Recipients,
          'allowed' := Allowed,
          'reasonCode' := ReasonCode,
          'blockingRulesetIds' := BlockingRulesetIds,
          'operatorUrl' := OperatorUrl
        }) ->
    #{ 'inboxId' => InboxId,
       'recipients' => Recipients,
       'allowed' => Allowed,
       'reasonCode' => ReasonCode,
       'blockingRulesetIds' => BlockingRulesetIds,
       'operatorUrl' => OperatorUrl
     }.
