-module(maislurp-client-erlang_phone_plan_availability).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_plan_availability/0]).

-type maislurp-client-erlang_phone_plan_availability() ::
    #{ 'items' := list(),
       'disabledPhoneCountries' := list()
     }.

encode(#{ 'items' := Items,
          'disabledPhoneCountries' := DisabledPhoneCountries
        }) ->
    #{ 'items' => Items,
       'disabledPhoneCountries' => DisabledPhoneCountries
     }.
