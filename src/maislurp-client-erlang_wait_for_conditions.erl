-module(maislurp-client-erlang_wait_for_conditions).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_conditions/0]).

-type maislurp-client-erlang_wait_for_conditions() ::
    #{ 'count' := integer(),
       'countType' => binary(),
       'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'matches' => list(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sortDirection' => binary(),
       'timeout' := integer(),
       'unreadOnly' => boolean()
     }.

encode(#{ 'count' := Count,
          'countType' := CountType,
          'inboxId' := InboxId,
          'matches' := Matches,
          'since' := Since,
          'sortDirection' := SortDirection,
          'timeout' := Timeout,
          'unreadOnly' := UnreadOnly
        }) ->
    #{ 'count' => Count,
       'countType' => CountType,
       'inboxId' => InboxId,
       'matches' => Matches,
       'since' => Since,
       'sortDirection' => SortDirection,
       'timeout' => Timeout,
       'unreadOnly' => UnreadOnly
     }.
