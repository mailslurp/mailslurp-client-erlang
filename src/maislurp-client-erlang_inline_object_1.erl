-module(maislurp-client-erlang_inline_object_1).

-export([encode/1]).

-export_type([maislurp-client-erlang_inline_object_1/0]).

-type maislurp-client-erlang_inline_object_1() ::
    #{ 'short' => integer(),
       'char' => binary(),
       'int' => integer(),
       'long' => integer(),
       'float' => integer(),
       'double' => float(),
       'direct' => boolean(),
       'readOnly' => boolean()
     }.

encode(#{ 'short' := Short,
          'char' := Char,
          'int' := Int,
          'long' := Long,
          'float' := Float,
          'double' := Double,
          'direct' := Direct,
          'readOnly' := ReadOnly
        }) ->
    #{ 'short' => Short,
       'char' => Char,
       'int' => Int,
       'long' => Long,
       'float' => Float,
       'double' => Double,
       'direct' => Direct,
       'readOnly' => ReadOnly
     }.
