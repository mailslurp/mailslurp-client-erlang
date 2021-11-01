-module(maislurp-client-erlang_flush_expired_inboxes_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_flush_expired_inboxes_result/0]).

-type maislurp-client-erlang_flush_expired_inboxes_result() ::
    #{ 'expireBefore' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'inboxIds' := list()
     }.

encode(#{ 'expireBefore' := ExpireBefore,
          'inboxIds' := InboxIds
        }) ->
    #{ 'expireBefore' => ExpireBefore,
       'inboxIds' => InboxIds
     }.
