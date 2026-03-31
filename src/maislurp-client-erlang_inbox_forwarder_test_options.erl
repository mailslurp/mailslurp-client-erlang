-module(maislurp-client-erlang_inbox_forwarder_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_forwarder_test_options/0]).

-type maislurp-client-erlang_inbox_forwarder_test_options() ::
    #{ 'testValue' => binary(),
       'emailId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'testValue' := TestValue,
          'emailId' := EmailId
        }) ->
    #{ 'testValue' => TestValue,
       'emailId' => EmailId
     }.
