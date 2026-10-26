-module(maislurp-client-erlang_email_warmup_today_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_today_dto/0]).

-type maislurp-client-erlang_email_warmup_today_dto() ::
    #{ 'date' := calendar:date(),
       'plannedSends' := integer(),
       'acceptedSends' := integer(),
       'observedSends' := integer(),
       'failedSends' := integer(),
       'nextSendAt' => maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'date' := Date,
          'plannedSends' := PlannedSends,
          'acceptedSends' := AcceptedSends,
          'observedSends' := ObservedSends,
          'failedSends' := FailedSends,
          'nextSendAt' := NextSendAt
        }) ->
    #{ 'date' => Date,
       'plannedSends' => PlannedSends,
       'acceptedSends' => AcceptedSends,
       'observedSends' => ObservedSends,
       'failedSends' => FailedSends,
       'nextSendAt' => NextSendAt
     }.
