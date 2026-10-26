-module(maislurp-client-erlang_check_campaign_probe_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_campaign_probe_results/0]).

-type maislurp-client-erlang_check_campaign_probe_results() ::
    #{ 'status' := binary(),
       'healthScore' := integer(),
       'totalChecks' := integer(),
       'passingChecks' := integer(),
       'failingChecks' := integer(),
       'checkedLinks' := integer(),
       'checkedImages' := integer(),
       'linkIssueCount' := integer(),
       'imageIssueCount' := integer(),
       'compatibilityWarningCount' := integer(),
       'compatibilityNotSupportedCount' := integer(),
       'compatibilityUnknownCount' := integer(),
       'htmlErrorCount' := integer(),
       'htmlWarningCount' := integer(),
       'htmlInfoCount' := integer(),
       'attachmentMentionIssueCount' := integer(),
       'insights' := list(),
       'errorMessage' => binary()
     }.

encode(#{ 'status' := Status,
          'healthScore' := HealthScore,
          'totalChecks' := TotalChecks,
          'passingChecks' := PassingChecks,
          'failingChecks' := FailingChecks,
          'checkedLinks' := CheckedLinks,
          'checkedImages' := CheckedImages,
          'linkIssueCount' := LinkIssueCount,
          'imageIssueCount' := ImageIssueCount,
          'compatibilityWarningCount' := CompatibilityWarningCount,
          'compatibilityNotSupportedCount' := CompatibilityNotSupportedCount,
          'compatibilityUnknownCount' := CompatibilityUnknownCount,
          'htmlErrorCount' := HtmlErrorCount,
          'htmlWarningCount' := HtmlWarningCount,
          'htmlInfoCount' := HtmlInfoCount,
          'attachmentMentionIssueCount' := AttachmentMentionIssueCount,
          'insights' := Insights,
          'errorMessage' := ErrorMessage
        }) ->
    #{ 'status' => Status,
       'healthScore' => HealthScore,
       'totalChecks' => TotalChecks,
       'passingChecks' => PassingChecks,
       'failingChecks' => FailingChecks,
       'checkedLinks' => CheckedLinks,
       'checkedImages' => CheckedImages,
       'linkIssueCount' => LinkIssueCount,
       'imageIssueCount' => ImageIssueCount,
       'compatibilityWarningCount' => CompatibilityWarningCount,
       'compatibilityNotSupportedCount' => CompatibilityNotSupportedCount,
       'compatibilityUnknownCount' => CompatibilityUnknownCount,
       'htmlErrorCount' => HtmlErrorCount,
       'htmlWarningCount' => HtmlWarningCount,
       'htmlInfoCount' => HtmlInfoCount,
       'attachmentMentionIssueCount' => AttachmentMentionIssueCount,
       'insights' => Insights,
       'errorMessage' => ErrorMessage
     }.
