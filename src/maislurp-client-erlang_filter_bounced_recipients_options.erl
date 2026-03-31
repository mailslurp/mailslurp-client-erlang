-module(maislurp-client-erlang_filter_bounced_recipients_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_filter_bounced_recipients_options/0]).

-type maislurp-client-erlang_filter_bounced_recipients_options() ::
    #{ 'emailRecipients' := list()
     }.

encode(#{ 'emailRecipients' := EmailRecipients
        }) ->
    #{ 'emailRecipients' => EmailRecipients
     }.
