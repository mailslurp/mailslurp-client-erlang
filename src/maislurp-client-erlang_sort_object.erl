-module(maislurp-client-erlang_sort_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort_object/0]).

-type maislurp-client-erlang_sort_object() ::
    #{ 'unsorted' => boolean(),
       'sorted' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'unsorted' := Unsorted,
          'sorted' := Sorted,
          'empty' := Empty
        }) ->
    #{ 'unsorted' => Unsorted,
       'sorted' => Sorted,
       'empty' => Empty
     }.
