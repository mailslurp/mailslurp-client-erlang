-module(maislurp-client-erlang_agent_inbox_send_policy_check_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_agent_inbox_send_policy_check_options/0]).

-type maislurp-client-erlang_agent_inbox_send_policy_check_options() ::
    #{ 'recipients' := list()
     }.

encode(#{ 'recipients' := Recipients
        }) ->
    #{ 'recipients' => Recipients
     }.
