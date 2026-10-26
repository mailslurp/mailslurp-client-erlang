-module(maislurp-client-erlang_lookup_ptr_results).

-export([encode/1]).

-export_type([maislurp-client-erlang_lookup_ptr_results/0]).

-type maislurp-client-erlang_lookup_ptr_results() ::
    #{ 'ip' := binary(),
       'ptrHostnames' := list(),
       'forwardConfirmed' := boolean(),
       'forwardARecords' := list(),
       'forwardAaaaRecords' := list(),
       'warnings' := list(),
       'errors' := list()
     }.

encode(#{ 'ip' := Ip,
          'ptrHostnames' := PtrHostnames,
          'forwardConfirmed' := ForwardConfirmed,
          'forwardARecords' := ForwardARecords,
          'forwardAaaaRecords' := ForwardAaaaRecords,
          'warnings' := Warnings,
          'errors' := Errors
        }) ->
    #{ 'ip' => Ip,
       'ptrHostnames' => PtrHostnames,
       'forwardConfirmed' => ForwardConfirmed,
       'forwardARecords' => ForwardARecords,
       'forwardAaaaRecords' => ForwardAaaaRecords,
       'warnings' => Warnings,
       'errors' => Errors
     }.
