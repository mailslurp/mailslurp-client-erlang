-module(maislurp-client-erlang_create_o_auth_exchange_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_o_auth_exchange_result/0]).

-type maislurp-client-erlang_create_o_auth_exchange_result() ::
    #{ 'success' := boolean(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'error' => binary()
     }.

encode(#{ 'success' := Success,
          'inboxId' := InboxId,
          'error' := Error
        }) ->
    #{ 'success' => Success,
       'inboxId' => InboxId,
       'error' => Error
     }.
