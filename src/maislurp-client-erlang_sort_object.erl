-module(maislurp-client-erlang_sort_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort_object/0]).

-type maislurp-client-erlang_sort_object() ::
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
