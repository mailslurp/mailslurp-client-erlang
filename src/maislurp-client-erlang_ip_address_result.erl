-module(maislurp-client-erlang_ip_address_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_ip_address_result/0]).

-type maislurp-client-erlang_ip_address_result() ::
    #{ 'address' := binary(),
       'hostname' := binary()
     }.

encode(#{ 'address' := Address,
          'hostname' := Hostname
        }) ->
    #{ 'address' => Address,
       'hostname' => Hostname
     }.
