-module(maislurp-client-erlang_ai_transform_mapping_match_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ai_transform_mapping_match_result/0]).

-type maislurp-client-erlang_ai_transform_mapping_match_result() ::
    #{ 'isMatch' := boolean()
     }.

encode(#{ 'isMatch' := IsMatch
        }) ->
    #{ 'isMatch' => IsMatch
     }.
