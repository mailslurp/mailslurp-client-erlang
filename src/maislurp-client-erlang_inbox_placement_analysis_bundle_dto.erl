-module(maislurp-client-erlang_inbox_placement_analysis_bundle_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analysis_bundle_dto/0]).

-type maislurp-client-erlang_inbox_placement_analysis_bundle_dto() ::
    #{ 'generatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'setupItems' := list(),
       'contentItems' := list(),
       'domainMonitor' => maislurp-client-erlang_inbox_placement_domain_monitor_summary_dto:maislurp-client-erlang_inbox_placement_domain_monitor_summary_dto()
     }.

encode(#{ 'generatedAt' := GeneratedAt,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'setupItems' := SetupItems,
          'contentItems' := ContentItems,
          'domainMonitor' := DomainMonitor
        }) ->
    #{ 'generatedAt' => GeneratedAt,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'setupItems' => SetupItems,
       'contentItems' => ContentItems,
       'domainMonitor' => DomainMonitor
     }.
