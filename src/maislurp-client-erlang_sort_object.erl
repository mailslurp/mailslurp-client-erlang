-module(maislurp-client-erlang_sort_object).

-export([encode/1]).

-export_type([maislurp-client-erlang_sort_object/0]).

-type maislurp-client-erlang_sort_object() ::
    #{ 'sorted' => boolean(),
       'unsorted' => boolean(),
       'empty' => boolean()
     }.

encode(#{ 'sorted' := Sorted,
          'unsorted' := Unsorted,
          'empty' := Empty
        }) ->
    #{ 'sorted' => Sorted,
       'unsorted' => Unsorted,
       'empty' => Empty
     }.
