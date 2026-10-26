-module(maislurp-client-erlang_inbox_placement_analytics_breakdown_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_analytics_breakdown_dto/0]).

-type maislurp-client-erlang_inbox_placement_analytics_breakdown_dto() ::
    #{ 'since' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'before' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'senderDomain' => binary(),
       'fromEmail' => binary(),
       'summary' := maislurp-client-erlang_inbox_placement_analytics_summary_dto:maislurp-client-erlang_inbox_placement_analytics_summary_dto(),
       'folders' := list(),
       'providers' := list(),
       'senderDomains' := list(),
       'fromEmails' := list()
     }.

encode(#{ 'since' := Since,
          'before' := Before,
          'senderDomain' := SenderDomain,
          'fromEmail' := FromEmail,
          'summary' := Summary,
          'folders' := Folders,
          'providers' := Providers,
          'senderDomains' := SenderDomains,
          'fromEmails' := FromEmails
        }) ->
    #{ 'since' => Since,
       'before' => Before,
       'senderDomain' => SenderDomain,
       'fromEmail' => FromEmail,
       'summary' => Summary,
       'folders' => Folders,
       'providers' => Providers,
       'senderDomains' => SenderDomains,
       'fromEmails' => FromEmails
     }.
