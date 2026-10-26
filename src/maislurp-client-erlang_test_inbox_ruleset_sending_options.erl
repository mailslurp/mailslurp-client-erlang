-module(maislurp-client-erlang_test_inbox_ruleset_sending_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_inbox_ruleset_sending_options/0]).

-type maislurp-client-erlang_test_inbox_ruleset_sending_options() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'phoneId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'recipient' := binary()
     }.

encode(#{ 'inboxId' := InboxId,
          'phoneId' := PhoneId,
          'recipient' := Recipient
        }) ->
    #{ 'inboxId' => InboxId,
       'phoneId' => PhoneId,
       'recipient' => Recipient
     }.
