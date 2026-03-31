-module(maislurp-client-erlang_email_feature_overview).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_overview/0]).

-type maislurp-client-erlang_email_feature_overview() ::
    #{ 'feature' := binary(),
       'title' => binary(),
       'description' => binary(),
       'category' => binary(),
       'notes' => binary(),
       'notesNumbers' => maps:map(),
       'featureStatistics' => list(),
       'statuses' := maislurp-client-erlang_set:maislurp-client-erlang_set()
     }.

encode(#{ 'feature' := Feature,
          'title' := Title,
          'description' := Description,
          'category' := Category,
          'notes' := Notes,
          'notesNumbers' := NotesNumbers,
          'featureStatistics' := FeatureStatistics,
          'statuses' := Statuses
        }) ->
    #{ 'feature' => Feature,
       'title' => Title,
       'description' => Description,
       'category' => Category,
       'notes' => Notes,
       'notesNumbers' => NotesNumbers,
       'featureStatistics' => FeatureStatistics,
       'statuses' => Statuses
     }.
