-module(maislurp-client-erlang_home_experience_upgrade_context_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_home_experience_upgrade_context_dto/0]).

-type maislurp-client-erlang_home_experience_upgrade_context_dto() ::
    #{ 'recommendedPlan' => binary(),
       'blockers' => list(),
       'promptStyle' => binary()
     }.

encode(#{ 'recommendedPlan' := RecommendedPlan,
          'blockers' := Blockers,
          'promptStyle' := PromptStyle
        }) ->
    #{ 'recommendedPlan' => RecommendedPlan,
       'blockers' => Blockers,
       'promptStyle' => PromptStyle
     }.
