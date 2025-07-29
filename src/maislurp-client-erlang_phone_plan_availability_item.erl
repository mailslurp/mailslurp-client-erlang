-module(maislurp-client-erlang_phone_plan_availability_item).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_plan_availability_item/0]).

-type maislurp-client-erlang_phone_plan_availability_item() ::
    #{ 'phoneCountry' := binary(),
       'availabilityStatus' := binary()
     }.

encode(#{ 'phoneCountry' := PhoneCountry,
          'availabilityStatus' := AvailabilityStatus
        }) ->
    #{ 'phoneCountry' => PhoneCountry,
       'availabilityStatus' => AvailabilityStatus
     }.
