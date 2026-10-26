-module(maislurp-client-erlang_domain_monitor_run_evidence_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_domain_monitor_run_evidence_dto/0]).

-type maislurp-client-erlang_domain_monitor_run_evidence_dto() ::
    #{ 'scoreVersion' := binary(),
       'scoreScope' := binary(),
       'observedMessageReceivedAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'outboundIp' => binary(),
       'outboundIpSource' => binary(),
       'observedDkimSelector' => binary(),
       'observedSpfStatus' => binary(),
       'observedDkimStatus' => binary(),
       'observedDmarcStatus' => binary(),
       'blacklist' => maislurp-client-erlang_check_email_blacklist_results:maislurp-client-erlang_check_email_blacklist_results()
     }.

encode(#{ 'scoreVersion' := ScoreVersion,
          'scoreScope' := ScoreScope,
          'observedMessageReceivedAt' := ObservedMessageReceivedAt,
          'outboundIp' := OutboundIp,
          'outboundIpSource' := OutboundIpSource,
          'observedDkimSelector' := ObservedDkimSelector,
          'observedSpfStatus' := ObservedSpfStatus,
          'observedDkimStatus' := ObservedDkimStatus,
          'observedDmarcStatus' := ObservedDmarcStatus,
          'blacklist' := Blacklist
        }) ->
    #{ 'scoreVersion' => ScoreVersion,
       'scoreScope' => ScoreScope,
       'observedMessageReceivedAt' => ObservedMessageReceivedAt,
       'outboundIp' => OutboundIp,
       'outboundIpSource' => OutboundIpSource,
       'observedDkimSelector' => ObservedDkimSelector,
       'observedSpfStatus' => ObservedSpfStatus,
       'observedDkimStatus' => ObservedDkimStatus,
       'observedDmarcStatus' => ObservedDmarcStatus,
       'blacklist' => Blacklist
     }.
