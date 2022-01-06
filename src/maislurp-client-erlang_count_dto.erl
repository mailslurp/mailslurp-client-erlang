-module(maislurp-client-erlang_count_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_count_dto/0]).

-type maislurp-client-erlang_count_dto() ::
    #{ 'totalElements' => integer()
     }.

encode(#{ 'totalElements' := TotalElements
        }) ->
    #{ 'totalElements' => TotalElements
     }.
