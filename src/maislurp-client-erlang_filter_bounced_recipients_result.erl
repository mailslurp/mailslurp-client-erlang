-module(maislurp-client-erlang_filter_bounced_recipients_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_filter_bounced_recipients_result/0]).

-type maislurp-client-erlang_filter_bounced_recipients_result() ::
    #{ 'filteredRecipients' := list()
     }.

encode(#{ 'filteredRecipients' := FilteredRecipients
        }) ->
    #{ 'filteredRecipients' => FilteredRecipients
     }.
