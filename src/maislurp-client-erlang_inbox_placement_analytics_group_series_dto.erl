-module(maislurp-client-erlang_inbox_placement_analytics_group_series_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analytics_group_series_dto/0]).

-type maislurp-client-erlang_inbox_placement_analytics_group_series_dto() ::
    #{ 'key' := binary(),
       'label' := binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'summary' := maislurp-client-erlang_inbox_placement_analytics_summary_dto:maislurp-client-erlang_inbox_placement_analytics_summary_dto(),
       'points' := list()
     }.

encode(#{ 'key' := Key,
          'label' := Label,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'summary' := Summary,
          'points' := Points
        }) ->
    #{ 'key' => Key,
       'label' => Label,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'summary' => Summary,
       'points' => Points
     }.
