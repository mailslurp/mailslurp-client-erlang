-module(maislurp-client-erlang_inbox_id_item).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_id_item/0]).

-type maislurp-client-erlang_inbox_id_item() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'emailAddress' := binary()
     }.

encode(#{ 'id' := Id,
          'emailAddress' := EmailAddress
        }) ->
    #{ 'id' => Id,
       'emailAddress' => EmailAddress
     }.
