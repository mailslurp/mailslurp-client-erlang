-module(maislurp-client-erlang_create_inbox_forwarder_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_inbox_forwarder_options/0]).

-type maislurp-client-erlang_create_inbox_forwarder_options() ::
    #{ 'field' => binary(),
       'forwardToRecipients' => list(),
       'match' => binary()
     }.

encode(#{ 'field' := Field,
          'forwardToRecipients' := ForwardToRecipients,
          'match' := Match
        }) ->
    #{ 'field' => Field,
       'forwardToRecipients' => ForwardToRecipients,
       'match' => Match
     }.
