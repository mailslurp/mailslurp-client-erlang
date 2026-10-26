-module(maislurp-client-erlang_inbox_by_email_address_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_by_email_address_result/0]).

-type maislurp-client-erlang_inbox_by_email_address_result() ::
    #{ 'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'exists' := boolean()
     }.

encode(#{ 'inboxId' := InboxId,
          'exists' := Exists
        }) ->
    #{ 'inboxId' => InboxId,
       'exists' => Exists
     }.
