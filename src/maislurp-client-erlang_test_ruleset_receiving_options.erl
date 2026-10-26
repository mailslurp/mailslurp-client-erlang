-module(maislurp-client-erlang_test_ruleset_receiving_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_ruleset_receiving_options/0]).

-type maislurp-client-erlang_test_ruleset_receiving_options() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'fromSender' := binary()
     }.

encode(#{ 'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'fromSender' := FromSender
        }) ->
    #{ 'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'fromSender' => FromSender
     }.
