-module(maislurp-client-erlang_inbox_exists_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_inbox_exists_dto/0]).

-type maislurp-client-erlang_inbox_exists_dto() ::
    #{ 'exists' := boolean(),
       'softBounce' => boolean(),
       'hardBounce' => boolean()
     }.

encode(#{ 'exists' := Exists,
          'softBounce' := SoftBounce,
          'hardBounce' := HardBounce
        }) ->
    #{ 'exists' => Exists,
       'softBounce' => SoftBounce,
       'hardBounce' => HardBounce
     }.
