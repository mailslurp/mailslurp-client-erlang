-module(maislurp-client-erlang_bulk_send_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_bulk_send_email_options/0]).

-type maislurp-client-erlang_bulk_send_email_options() ::
    #{ 'inboxIds' := list(),
       'sendEmailOptions' => maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()
     }.

encode(#{ 'inboxIds' := InboxIds,
          'sendEmailOptions' := SendEmailOptions
        }) ->
    #{ 'inboxIds' => InboxIds,
       'sendEmailOptions' => SendEmailOptions
     }.
