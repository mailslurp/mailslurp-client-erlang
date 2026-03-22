-module(maislurp-client-erlang_campaign_probe_run_due_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_run_due_result/0]).

-type maislurp-client-erlang_campaign_probe_run_due_result() ::
    #{ 'triggerSource' := binary(),
       'runCount' := integer(),
       'dueProbeCount' := integer(),
       'skippedCount' := integer(),
       'requestedMaxRuns' := integer(),
       'executedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'triggerSource' := TriggerSource,
          'runCount' := RunCount,
          'dueProbeCount' := DueProbeCount,
          'skippedCount' := SkippedCount,
          'requestedMaxRuns' := RequestedMaxRuns,
          'executedAt' := ExecutedAt
        }) ->
    #{ 'triggerSource' => TriggerSource,
       'runCount' => RunCount,
       'dueProbeCount' => DueProbeCount,
       'skippedCount' => SkippedCount,
       'requestedMaxRuns' => RequestedMaxRuns,
       'executedAt' => ExecutedAt
     }.
