-module(maislurp-client-erlang_plan_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_plan_summary_dto/0]).

-type maislurp-client-erlang_plan_summary_dto() ::
    #{ 'subscriptionSchedule' => binary(),
       'phoneCountry' := binary()
     }.

encode(#{ 'subscriptionSchedule' := SubscriptionSchedule,
          'phoneCountry' := PhoneCountry
        }) ->
    #{ 'subscriptionSchedule' => SubscriptionSchedule,
       'phoneCountry' => PhoneCountry
     }.
