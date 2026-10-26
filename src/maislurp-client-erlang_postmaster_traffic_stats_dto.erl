-module(maislurp-client-erlang_postmaster_traffic_stats_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_postmaster_traffic_stats_dto/0]).

-type maislurp-client-erlang_postmaster_traffic_stats_dto() ::
    #{ 'name' => binary(),
       'domain' := binary(),
       'reportDate' => calendar:date(),
       'userReportedSpamRatio' => float(),
       'domainReputation' => binary(),
       'ipReputations' := list(),
       'spfSuccessRatio' => float(),
       'dkimSuccessRatio' => float(),
       'dmarcSuccessRatio' => float(),
       'outboundEncryptionRatio' => float(),
       'inboundEncryptionRatio' => float(),
       'payload' := maps:map()
     }.

encode(#{ 'name' := Name,
          'domain' := Domain,
          'reportDate' := ReportDate,
          'userReportedSpamRatio' := UserReportedSpamRatio,
          'domainReputation' := DomainReputation,
          'ipReputations' := IpReputations,
          'spfSuccessRatio' := SpfSuccessRatio,
          'dkimSuccessRatio' := DkimSuccessRatio,
          'dmarcSuccessRatio' := DmarcSuccessRatio,
          'outboundEncryptionRatio' := OutboundEncryptionRatio,
          'inboundEncryptionRatio' := InboundEncryptionRatio,
          'payload' := Payload
        }) ->
    #{ 'name' => Name,
       'domain' => Domain,
       'reportDate' => ReportDate,
       'userReportedSpamRatio' => UserReportedSpamRatio,
       'domainReputation' => DomainReputation,
       'ipReputations' => IpReputations,
       'spfSuccessRatio' => SpfSuccessRatio,
       'dkimSuccessRatio' => DkimSuccessRatio,
       'dmarcSuccessRatio' => DmarcSuccessRatio,
       'outboundEncryptionRatio' => OutboundEncryptionRatio,
       'inboundEncryptionRatio' => InboundEncryptionRatio,
       'payload' => Payload
     }.
