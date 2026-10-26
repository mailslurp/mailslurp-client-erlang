-module(maislurp-client-erlang_inbox_placement_test_results_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_test_results_dto/0]).

-type maislurp-client-erlang_inbox_placement_test_results_dto() ::
    #{ 'run' := maislurp-client-erlang_inbox_placement_test_run_dto:maislurp-client-erlang_inbox_placement_test_run_dto(),
       'results' := maislurp-client-erlang_inbox_placement_remote_results_dto:maislurp-client-erlang_inbox_placement_remote_results_dto(),
       'spamScores' := list()
     }.

encode(#{ 'run' := Run,
          'results' := Results,
          'spamScores' := SpamScores
        }) ->
    #{ 'run' => Run,
       'results' => Results,
       'spamScores' => SpamScores
     }.
