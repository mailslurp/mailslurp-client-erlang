-module(maislurp-client-erlang_create_inbox_forwarder_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_forwarder_options/0]).

-type maislurp-client-erlang_create_inbox_forwarder_options() ::
    #{ 'field' := binary(),
       'match' := binary(),
       'forwardToRecipients' := list()
     }.

encode(#{ 'field' := Field,
          'match' := Match,
          'forwardToRecipients' := ForwardToRecipients
        }) ->
    #{ 'field' => Field,
       'match' => Match,
       'forwardToRecipients' => ForwardToRecipients
     }.
