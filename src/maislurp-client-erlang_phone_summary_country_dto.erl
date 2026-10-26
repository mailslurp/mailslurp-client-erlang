-module(maislurp-client-erlang_phone_summary_country_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_summary_country_dto/0]).

-type maislurp-client-erlang_phone_summary_country_dto() ::
    #{ 'phoneCountryCode' := binary(),
       'totalCount' := integer(),
       'hasPlan' := boolean()
     }.

encode(#{ 'phoneCountryCode' := PhoneCountryCode,
          'totalCount' := TotalCount,
          'hasPlan' := HasPlan
        }) ->
    #{ 'phoneCountryCode' => PhoneCountryCode,
       'totalCount' => TotalCount,
       'hasPlan' => HasPlan
     }.
