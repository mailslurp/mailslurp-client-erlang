-module(maislurp-client-erlang_unseen_error_count_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_unseen_error_count_dto/0]).

-type maislurp-client-erlang_unseen_error_count_dto() ::
    #{ 'count' => integer()
     }.

encode(#{ 'count' := Count
        }) ->
    #{ 'count' => Count
     }.
