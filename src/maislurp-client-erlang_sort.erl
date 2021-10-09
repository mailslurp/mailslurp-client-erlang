-module(maislurp-client-erlang_sort).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort/0]).

-type maislurp-client-erlang_sort() ::
    #{ 'empty' => boolean(),
       'sorted' => boolean(),
       'unsorted' => boolean()
     }.

encode(#{ 'empty' := Empty,
          'sorted' := Sorted,
          'unsorted' := Unsorted
        }) ->
    #{ 'empty' => Empty,
       'sorted' => Sorted,
       'unsorted' => Unsorted
     }.
