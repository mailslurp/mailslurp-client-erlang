-module(maislurp-client-erlang_inbox_exists_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_exists_dto/0]).

-type maislurp-client-erlang_inbox_exists_dto() ::
    #{ 'exists' => boolean()
     }.

encode(#{ 'exists' := Exists
        }) ->
    #{ 'exists' => Exists
     }.
