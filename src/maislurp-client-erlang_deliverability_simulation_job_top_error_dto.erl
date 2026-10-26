-module(maislurp-client-erlang_deliverability_simulation_job_top_error_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_top_error_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_top_error_dto() ::
    #{ 'message' := binary(),
       'count' := integer()
     }.

encode(#{ 'message' := Message,
          'count' := Count
        }) ->
    #{ 'message' => Message,
       'count' => Count
     }.
