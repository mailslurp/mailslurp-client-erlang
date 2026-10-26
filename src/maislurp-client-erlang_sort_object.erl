-module(maislurp-client-erlang_sort_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort_object/0]).

-type maislurp-client-erlang_sort_object() ::
    #{ 'sorted' => boolean(),
       'empty' => boolean(),
       'unsorted' => boolean()
     }.

encode(#{ 'sorted' := Sorted,
          'empty' := Empty,
          'unsorted' := Unsorted
        }) ->
    #{ 'sorted' => Sorted,
       'empty' => Empty,
       'unsorted' => Unsorted
     }.
