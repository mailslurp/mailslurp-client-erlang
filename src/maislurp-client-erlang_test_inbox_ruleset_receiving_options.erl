-module(maislurp-client-erlang_test_inbox_ruleset_receiving_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_inbox_ruleset_receiving_options/0]).

-type maislurp-client-erlang_test_inbox_ruleset_receiving_options() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromSender' := binary()
     }.

encode(#{ 'inboxId' := InboxId,
          'fromSender' := FromSender
        }) ->
    #{ 'inboxId' => InboxId,
       'fromSender' => FromSender
     }.
