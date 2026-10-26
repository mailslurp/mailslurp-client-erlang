-module(maislurp-client-erlang_wait_for_conditions).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_conditions/0]).

-type maislurp-client-erlang_wait_for_conditions() ::
    #{ 'inboxId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'count' => integer(),
       'delayTimeout' => integer(),
       'timeout' := integer(),
       'unreadOnly' => boolean(),
       'countType' => binary(),
       'matches' => list(),
       'sortDirection' => binary(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'ai' => maislurp-client-erlang_a_i_message_match_options:maislurp-client-erlang_a_i_message_match_options()
     }.

encode(#{ 'inboxId' := InboxId,
          'count' := Count,
          'delayTimeout' := DelayTimeout,
          'timeout' := Timeout,
          'unreadOnly' := UnreadOnly,
          'countType' := CountType,
          'matches' := Matches,
          'sortDirection' := SortDirection,
          'since' := Since,
          'before' := Before,
          'ai' := Ai
        }) ->
    #{ 'inboxId' => InboxId,
       'count' => Count,
       'delayTimeout' => DelayTimeout,
       'timeout' => Timeout,
       'unreadOnly' => UnreadOnly,
       'countType' => CountType,
       'matches' => Matches,
       'sortDirection' => SortDirection,
       'since' => Since,
       'before' => Before,
       'ai' => Ai
     }.
