-module(maislurp-client-erlang_wait_for_sms_conditions).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_sms_conditions/0]).

-type maislurp-client-erlang_wait_for_sms_conditions() ::
    #{ 'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'limit' => integer(),
       'count' := integer(),
       'delayTimeout' => integer(),
       'timeout' := integer(),
       'unreadOnly' => boolean(),
       'countType' => binary(),
       'matches' => list(),
       'sortDirection' => binary(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'phoneNumberId' := PhoneNumberId,
          'limit' := Limit,
          'count' := Count,
          'delayTimeout' := DelayTimeout,
          'timeout' := Timeout,
          'unreadOnly' := UnreadOnly,
          'countType' := CountType,
          'matches' := Matches,
          'sortDirection' := SortDirection,
          'since' := Since,
          'before' := Before
        }) ->
    #{ 'phoneNumberId' => PhoneNumberId,
       'limit' => Limit,
       'count' => Count,
       'delayTimeout' => DelayTimeout,
       'timeout' => Timeout,
       'unreadOnly' => UnreadOnly,
       'countType' => CountType,
       'matches' => Matches,
       'sortDirection' => SortDirection,
       'since' => Since,
       'before' => Before
     }.
