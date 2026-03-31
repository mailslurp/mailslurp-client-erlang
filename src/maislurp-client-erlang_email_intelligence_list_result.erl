-module(maislurp-client-erlang_email_intelligence_list_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_list_result/0]).

-type maislurp-client-erlang_email_intelligence_list_result() ::
    #{ 'content' := list(),
       'page' := integer(),
       'size' := integer(),
       'totalElements' := integer(),
       'totalPages' := integer(),
       'billableCount' := integer()
     }.

encode(#{ 'content' := Content,
          'page' := Page,
          'size' := Size,
          'totalElements' := TotalElements,
          'totalPages' := TotalPages,
          'billableCount' := BillableCount
        }) ->
    #{ 'content' => Content,
       'page' => Page,
       'size' => Size,
       'totalElements' => TotalElements,
       'totalPages' => TotalPages,
       'billableCount' => BillableCount
     }.
