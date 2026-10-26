-module(maislurp-client-erlang_inbox_placement_sender_breakdown_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_sender_breakdown_dto/0]).

-type maislurp-client-erlang_inbox_placement_sender_breakdown_dto() ::
    #{ 'key' := binary(),
       'label' := binary(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'runCount' := integer(),
       'lastRunAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'metrics' := maislurp-client-erlang_inbox_placement_analytics_summary_dto:maislurp-client-erlang_inbox_placement_analytics_summary_dto()
     }.

encode(#{ 'key' := Key,
          'label' := Label,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'runCount' := RunCount,
          'lastRunAt' := LastRunAt,
          'metrics' := Metrics
        }) ->
    #{ 'key' => Key,
       'label' => Label,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'runCount' => RunCount,
       'lastRunAt' => LastRunAt,
       'metrics' => Metrics
     }.
