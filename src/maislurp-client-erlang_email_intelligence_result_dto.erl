-module(maislurp-client-erlang_email_intelligence_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_result_dto/0]).

-type maislurp-client-erlang_email_intelligence_result_dto() ::
    #{ 'input' := binary(),
       'totalScore' := integer(),
       'scoreBreakdown' := maislurp-client-erlang_email_intelligence_score_breakdown_dto:maislurp-client-erlang_email_intelligence_score_breakdown_dto(),
       'signals' := maislurp-client-erlang_email_intelligence_signals_dto:maislurp-client-erlang_email_intelligence_signals_dto()
     }.

encode(#{ 'input' := Input,
          'totalScore' := TotalScore,
          'scoreBreakdown' := ScoreBreakdown,
          'signals' := Signals
        }) ->
    #{ 'input' => Input,
       'totalScore' => TotalScore,
       'scoreBreakdown' => ScoreBreakdown,
       'signals' => Signals
     }.
