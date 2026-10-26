-module(maislurp-client-erlang_delivery_sender_capacity_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_delivery_sender_capacity_dto/0]).

-type maislurp-client-erlang_delivery_sender_capacity_dto() ::
    #{ 'includedSenderSeats' := integer(),
       'purchasedSenderSeats' := integer(),
       'totalSenderCapacity' := integer(),
       'activeSenderConnections' := integer()
     }.

encode(#{ 'includedSenderSeats' := IncludedSenderSeats,
          'purchasedSenderSeats' := PurchasedSenderSeats,
          'totalSenderCapacity' := TotalSenderCapacity,
          'activeSenderConnections' := ActiveSenderConnections
        }) ->
    #{ 'includedSenderSeats' => IncludedSenderSeats,
       'purchasedSenderSeats' => PurchasedSenderSeats,
       'totalSenderCapacity' => TotalSenderCapacity,
       'activeSenderConnections' => ActiveSenderConnections
     }.
