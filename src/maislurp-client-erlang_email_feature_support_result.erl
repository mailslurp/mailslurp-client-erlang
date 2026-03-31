-module(maislurp-client-erlang_email_feature_support_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_feature_support_result/0]).

-type maislurp-client-erlang_email_feature_support_result() ::
    #{ 'names' := maislurp-client-erlang_email_feature_names:maislurp-client-erlang_email_feature_names(),
       'detectedFeatures' := maislurp-client-erlang_set:maislurp-client-erlang_set(),
       'featureOverviews' := list(),
       'featurePercentages' := list()
     }.

encode(#{ 'names' := Names,
          'detectedFeatures' := DetectedFeatures,
          'featureOverviews' := FeatureOverviews,
          'featurePercentages' := FeaturePercentages
        }) ->
    #{ 'names' => Names,
       'detectedFeatures' => DetectedFeatures,
       'featureOverviews' => FeatureOverviews,
       'featurePercentages' => FeaturePercentages
     }.
