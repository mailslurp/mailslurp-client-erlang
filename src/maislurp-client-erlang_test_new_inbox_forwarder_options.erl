-module(maislurp-client-erlang_test_new_inbox_forwarder_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_test_new_inbox_forwarder_options/0]).

-type maislurp-client-erlang_test_new_inbox_forwarder_options() ::
    #{ 'inboxForwarderTestOptions' := maislurp-client-erlang_inbox_forwarder_test_options:maislurp-client-erlang_inbox_forwarder_test_options(),
       'createInboxForwarderOptions' := maislurp-client-erlang_create_inbox_forwarder_options:maislurp-client-erlang_create_inbox_forwarder_options()
     }.

encode(#{ 'inboxForwarderTestOptions' := InboxForwarderTestOptions,
          'createInboxForwarderOptions' := CreateInboxForwarderOptions
        }) ->
    #{ 'inboxForwarderTestOptions' => InboxForwarderTestOptions,
       'createInboxForwarderOptions' => CreateInboxForwarderOptions
     }.
