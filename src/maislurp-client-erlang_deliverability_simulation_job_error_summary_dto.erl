-module(maislurp-client-erlang_deliverability_simulation_job_error_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_error_summary_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_error_summary_dto() ::
    #{ 'lastError' => binary(),
       'topErrors' := list()
     }.

encode(#{ 'lastError' := LastError,
          'topErrors' := TopErrors
        }) ->
    #{ 'lastError' => LastError,
       'topErrors' => TopErrors
     }.
