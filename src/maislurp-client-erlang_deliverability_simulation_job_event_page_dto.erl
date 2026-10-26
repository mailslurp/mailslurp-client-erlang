-module(maislurp-client-erlang_deliverability_simulation_job_event_page_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_deliverability_simulation_job_event_page_dto/0]).

-type maislurp-client-erlang_deliverability_simulation_job_event_page_dto() ::
    #{ 'job' := maislurp-client-erlang_deliverability_simulation_job_dto:maislurp-client-erlang_deliverability_simulation_job_dto(),
       'content' := list(),
       'page' := integer(),
       'size' := integer(),
       'totalElements' := integer(),
       'totalPages' := integer()
     }.

encode(#{ 'job' := Job,
          'content' := Content,
          'page' := Page,
          'size' := Size,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages
        }) ->
    #{ 'job' => Job,
       'content' => Content,
       'page' => Page,
       'size' => Size,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages
     }.
