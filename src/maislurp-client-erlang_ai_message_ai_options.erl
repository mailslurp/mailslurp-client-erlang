-module(maislurp-client-erlang_ai_message_ai_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_message_ai_options/0]).

-type maislurp-client-erlang_ai_message_ai_options() ::
    #{ 'model' := binary(),
       'maxTokens' := integer(),
       'maxCandidates' := integer(),
       'maxOutputTokens' := integer(),
       'minimumConfidence' => float()
     }.

encode(#{ 'model' := Model,
          'maxTokens' := MaxTokens,
          'maxCandidates' := MaxCandidates,
          'maxOutputTokens' := MaxOutputTokens,
          'minimumConfidence' := MinimumConfidence
        }) ->
    #{ 'model' => Model,
       'maxTokens' => MaxTokens,
       'maxCandidates' => MaxCandidates,
       'maxOutputTokens' => MaxOutputTokens,
       'minimumConfidence' => MinimumConfidence
     }.
