-module(maislurp-client-erlang_wait_for_single_sms_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_wait_for_single_sms_options/0]).

-type maislurp-client-erlang_wait_for_single_sms_options() ::
    #{ 'phoneNumberId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'timeout' := integer(),
       'unreadOnly' => boolean(),
       'before' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'since' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'sortDirection' => binary(),
       'delay' => integer()
     }.

encode(#{ 'phoneNumberId' := PhoneNumberId,
          'timeout' := Timeout,
          'unreadOnly' := UnreadOnly,
          'before' := Before,
          'since' := Since,
          'sortDirection' := SortDirection,
          'delay' := Delay
        }) ->
    #{ 'phoneNumberId' => PhoneNumberId,
       'timeout' => Timeout,
       'unreadOnly' => UnreadOnly,
       'before' => Before,
       'since' => Since,
       'sortDirection' => SortDirection,
       'delay' => Delay
     }.
