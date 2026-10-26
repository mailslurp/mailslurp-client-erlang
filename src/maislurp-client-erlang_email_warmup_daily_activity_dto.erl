-module(maislurp-client-erlang_email_warmup_daily_activity_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_warmup_daily_activity_dto/0]).

-type maislurp-client-erlang_email_warmup_daily_activity_dto() ::
    #{ 'date' := calendar:date(),
       'scheduledSends' := integer(),
       'acceptedSends' := integer(),
       'observedSends' := integer(),
       'failedSends' := integer()
     }.

encode(#{ 'date' := Date,
          'scheduledSends' := ScheduledSends,
          'acceptedSends' := AcceptedSends,
          'observedSends' := ObservedSends,
          'failedSends' := FailedSends
        }) ->
    #{ 'date' => Date,
       'scheduledSends' => ScheduledSends,
       'acceptedSends' => AcceptedSends,
       'observedSends' => ObservedSends,
       'failedSends' => FailedSends
     }.
