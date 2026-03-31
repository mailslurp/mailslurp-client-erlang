-module(maislurp-client-erlang_campaign_probe_run_comparison_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_campaign_probe_run_comparison_dto/0]).

-type maislurp-client-erlang_campaign_probe_run_comparison_dto() ::
    #{ 'baseline' := maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto(),
       'current' := maislurp-client-erlang_campaign_probe_run_dto:maislurp-client-erlang_campaign_probe_run_dto(),
       'healthScoreDelta' := integer(),
       'statusChanged' := boolean(),
       'linkIssueDelta' := integer(),
       'imageIssueDelta' := integer(),
       'compatibilityWarningDelta' := integer(),
       'compatibilityNotSupportedDelta' := integer(),
       'htmlErrorDelta' := integer(),
       'htmlWarningDelta' := integer(),
       'reputationFailureDelta' := integer(),
       'attachmentMentionIssueDelta' := integer(),
       'addedInsights' := list(),
       'removedInsights' := list()
     }.

encode(#{ 'baseline' := Baseline,
          'current' := Current,
          'healthScoreDelta' := HealthScoreDelta,
          'statusChanged' := StatusChanged,
          'linkIssueDelta' := LinkIssueDelta,
          'imageIssueDelta' := ImageIssueDelta,
          'compatibilityWarningDelta' := CompatibilityWarningDelta,
          'compatibilityNotSupportedDelta' := CompatibilityNotSupportedDelta,
          'htmlErrorDelta' := HtmlErrorDelta,
          'htmlWarningDelta' := HtmlWarningDelta,
          'reputationFailureDelta' := ReputationFailureDelta,
          'attachmentMentionIssueDelta' := AttachmentMentionIssueDelta,
          'addedInsights' := AddedInsights,
          'removedInsights' := RemovedInsights
        }) ->
    #{ 'baseline' => Baseline,
       'current' => Current,
       'healthScoreDelta' => HealthScoreDelta,
       'statusChanged' => StatusChanged,
       'linkIssueDelta' => LinkIssueDelta,
       'imageIssueDelta' => ImageIssueDelta,
       'compatibilityWarningDelta' => CompatibilityWarningDelta,
       'compatibilityNotSupportedDelta' => CompatibilityNotSupportedDelta,
       'htmlErrorDelta' => HtmlErrorDelta,
       'htmlWarningDelta' => HtmlWarningDelta,
       'reputationFailureDelta' => ReputationFailureDelta,
       'attachmentMentionIssueDelta' => AttachmentMentionIssueDelta,
       'addedInsights' => AddedInsights,
       'removedInsights' => RemovedInsights
     }.
