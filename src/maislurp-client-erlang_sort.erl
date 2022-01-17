-module(maislurp-client-erlang_sort).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort/0]).

-type maislurp-client-erlang_sort() ::
    #{ 'empty' => boolean(),
       'unsorted' => boolean(),
       'sorted' => boolean()
     }.

encode(#{ 'empty' := Empty,
          'unsorted' := Unsorted,
          'sorted' := Sorted
        }) ->
    #{ 'empty' => Empty,
       'unsorted' => Unsorted,
       'sorted' => Sorted
     }.
