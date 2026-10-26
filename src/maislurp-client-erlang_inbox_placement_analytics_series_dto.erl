-module(maislurp-client-erlang_inbox_placement_analytics_series_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analytics_series_dto/0]).

-type maislurp-client-erlang_inbox_placement_analytics_series_dto() ::
    #{ 'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'bucket' := binary(),
       'groupBy' := binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'summary' := maislurp-client-erlang_inbox_placement_analytics_summary_dto:maislurp-client-erlang_inbox_placement_analytics_summary_dto(),
       'runs' := list(),
       'points' := list(),
       'groups' := list()
     }.

encode(#{ 'since' := Since,
          'before' := Before,
          'bucket' := Bucket,
          'groupBy' := GroupBy,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'summary' := Summary,
          'runs' := Runs,
          'points' := Points,
          'groups' := Groups
        }) ->
    #{ 'since' => Since,
       'before' => Before,
       'bucket' => Bucket,
       'groupBy' => GroupBy,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'summary' => Summary,
       'runs' => Runs,
       'points' => Points,
       'groups' => Groups
     }.
