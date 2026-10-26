-module(maislurp-client-erlang_update_delivery_sender_seats_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_update_delivery_sender_seats_options/0]).

-type maislurp-client-erlang_update_delivery_sender_seats_options() ::
    #{ 'quantity' := integer()
     }.

encode(#{ 'quantity' := Quantity
        }) ->
    #{ 'quantity' => Quantity
     }.
