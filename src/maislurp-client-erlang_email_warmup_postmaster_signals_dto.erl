-module(maislurp-client-erlang_email_warmup_postmaster_signals_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_postmaster_signals_dto/0]).

-type maislurp-client-erlang_email_warmup_postmaster_signals_dto() ::
    #{ 'reportDate' := calendar:date(),
       'domainReputation' => binary(),
       'userReportedSpamRatio' => float(),
       'spfSuccessRatio' => float(),
       'dkimSuccessRatio' => float(),
       'dmarcSuccessRatio' => float()
     }.

encode(#{ 'reportDate' := ReportDate,
          'domainReputation' := DomainReputation,
          'userReportedSpamRatio' := UserReportedSpamRatio,
          'spfSuccessRatio' := SpfSuccessRatio,
          'dkimSuccessRatio' := DkimSuccessRatio,
          'dmarcSuccessRatio' := DmarcSuccessRatio
        }) ->
    #{ 'reportDate' => ReportDate,
       'domainReputation' => DomainReputation,
       'userReportedSpamRatio' => UserReportedSpamRatio,
       'spfSuccessRatio' => SpfSuccessRatio,
       'dkimSuccessRatio' => DkimSuccessRatio,
       'dmarcSuccessRatio' => DmarcSuccessRatio
     }.
