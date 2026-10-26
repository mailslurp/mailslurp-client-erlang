-module(maislurp-client-erlang_inbox_placement_provider_analysis_section_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_placement_provider_analysis_section_dto/0]).

-type maislurp-client-erlang_inbox_placement_provider_analysis_section_dto() ::
    #{ 'status' := binary(),
       'summary' => binary(),
       'checks' := list(),
       'details' := maps:map()
     }.

encode(#{ 'status' := Status,
          'summary' := Summary,
          'checks' := Checks,
          'details' := Details
        }) ->
    #{ 'status' => Status,
       'summary' => Summary,
       'checks' => Checks,
       'details' => Details
     }.
