-module(maislurp-client-erlang_analyze_dmarc_report_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_analyze_dmarc_report_results/0]).

-type maislurp-client-erlang_analyze_dmarc_report_results() ::
    #{ 'metadata' := maislurp-client-erlang_dmarc_report_metadata:maislurp-client-erlang_dmarc_report_metadata(),
       'recordCount' := integer(),
       'totalMessages' := integer(),
       'rejectCount' := integer(),
       'quarantineCount' := integer(),
       'noneCount' := integer(),
       'dkimAlignedCount' := integer(),
       'spfAlignedCount' := integer(),
       'fullyAlignedCount' := integer(),
       'failedAlignmentCount' := integer(),
       'topSources' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'metadata' := Metadata,
          'recordCount' := RecordCount,
          'totalMessages' := TotalMessages,
          'rejectCount' := RejectCount,
          'quarantineCount' := QuarantineCount,
          'noneCount' := NoneCount,
          'dkimAlignedCount' := DkimAlignedCount,
          'spfAlignedCount' := SpfAlignedCount,
          'fullyAlignedCount' := FullyAlignedCount,
          'failedAlignmentCount' := FailedAlignmentCount,
          'topSources' := TopSources,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'metadata' => Metadata,
       'recordCount' => RecordCount,
       'totalMessages' => TotalMessages,
       'rejectCount' => RejectCount,
       'quarantineCount' => QuarantineCount,
       'noneCount' => NoneCount,
       'dkimAlignedCount' => DkimAlignedCount,
       'spfAlignedCount' => SpfAlignedCount,
       'fullyAlignedCount' => FullyAlignedCount,
       'failedAlignmentCount' => FailedAlignmentCount,
       'topSources' => TopSources,
       'warnings' => Warnings,
       'errors' => Errors
     }.
