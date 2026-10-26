-module(maislurp-client-erlang_inbox_placement_remote_results_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_remote_results_dto/0]).

-type maislurp-client-erlang_inbox_placement_remote_results_dto() ::
    #{ 'test' := maislurp-client-erlang_inbox_placement_remote_test_summary_dto:maislurp-client-erlang_inbox_placement_remote_test_summary_dto(),
       'deliverability' := maislurp-client-erlang_inbox_placement_deliverability_summary_dto:maislurp-client-erlang_inbox_placement_deliverability_summary_dto(),
       'setupAnalysis' := maps:map(),
       'contentAnalysis' := maps:map(),
       'analysis' => maislurp-client-erlang_inbox_placement_analysis_bundle_dto:maislurp-client-erlang_inbox_placement_analysis_bundle_dto(),
       'providerAnalysis' => maislurp-client-erlang_inbox_placement_provider_analysis_dto:maislurp-client-erlang_inbox_placement_provider_analysis_dto(),
       'targets' := list(),
       'scores' := list(),
       'share' => maps:map()
     }.

encode(#{ 'test' := Test,
          'deliverability' := Deliverability,
          'setupAnalysis' := SetupAnalysis,
          'contentAnalysis' := ContentAnalysis,
          'analysis' := Analysis,
          'providerAnalysis' := ProviderAnalysis,
          'targets' := Targets,
          'scores' := Scores,
          'share' := Share
        }) ->
    #{ 'test' => Test,
       'deliverability' => Deliverability,
       'setupAnalysis' => SetupAnalysis,
       'contentAnalysis' => ContentAnalysis,
       'analysis' => Analysis,
       'providerAnalysis' => ProviderAnalysis,
       'targets' => Targets,
       'scores' => Scores,
       'share' => Share
     }.
