-module(maislurp-client-erlang_email_audit_comparison_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_audit_comparison_dto/0]).

-type maislurp-client-erlang_email_audit_comparison_dto() ::
    #{ 'baseline' := maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(),
       'current' := maislurp-client-erlang_email_audit_dto:maislurp-client-erlang_email_audit_dto(),
       'healthScoreDelta' := integer(),
       'statusChanged' := boolean(),
       'brokenLinkDelta' := integer(),
       'brokenImageDelta' := integer(),
       'spellingIssueDelta' := integer(),
       'htmlErrorDelta' := integer(),
       'htmlWarningDelta' := integer(),
       'compatibilityWarningDelta' := integer(),
       'compatibilityNotSupportedDelta' := integer(),
       'reputationFailureDelta' := integer(),
       'attachmentMentionIssueDelta' := integer(),
       'addedInsights' := list(),
       'removedInsights' := list()
     }.

encode(#{ 'baseline' := Baseline,
          'current' := Current,
          'healthScoreDelta' := HealthScoreDelta,
          'statusChanged' := StatusChanged,
          'brokenLinkDelta' := BrokenLinkDelta,
          'brokenImageDelta' := BrokenImageDelta,
          'spellingIssueDelta' := SpellingIssueDelta,
          'htmlErrorDelta' := HtmlErrorDelta,
          'htmlWarningDelta' := HtmlWarningDelta,
          'compatibilityWarningDelta' := CompatibilityWarningDelta,
          'compatibilityNotSupportedDelta' := CompatibilityNotSupportedDelta,
          'reputationFailureDelta' := ReputationFailureDelta,
          'attachmentMentionIssueDelta' := AttachmentMentionIssueDelta,
          'addedInsights' := AddedInsights,
          'removedInsights' := RemovedInsights
        }) ->
    #{ 'baseline' => Baseline,
       'current' => Current,
       'healthScoreDelta' => HealthScoreDelta,
       'statusChanged' => StatusChanged,
       'brokenLinkDelta' => BrokenLinkDelta,
       'brokenImageDelta' => BrokenImageDelta,
       'spellingIssueDelta' => SpellingIssueDelta,
       'htmlErrorDelta' => HtmlErrorDelta,
       'htmlWarningDelta' => HtmlWarningDelta,
       'compatibilityWarningDelta' => CompatibilityWarningDelta,
       'compatibilityNotSupportedDelta' => CompatibilityNotSupportedDelta,
       'reputationFailureDelta' => ReputationFailureDelta,
       'attachmentMentionIssueDelta' => AttachmentMentionIssueDelta,
       'addedInsights' => AddedInsights,
       'removedInsights' => RemovedInsights
     }.
