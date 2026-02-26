-module(maislurp-client-erlang_phone_summary_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_summary_dto/0]).

-type maislurp-client-erlang_phone_summary_dto() ::
    #{ 'phoneCountrySummaries' := list(),
       'hasPhoneNumbers' := boolean(),
       'hasMissingPlans' := boolean(),
       'totalPhones' := integer(),
       'plans' := list()
     }.

encode(#{ 'phoneCountrySummaries' := PhoneCountrySummaries,
          'hasPhoneNumbers' := HasPhoneNumbers,
          'hasMissingPlans' := HasMissingPlans,
          'totalPhones' := TotalPhones,
          'plans' := Plans
        }) ->
    #{ 'phoneCountrySummaries' => PhoneCountrySummaries,
       'hasPhoneNumbers' => HasPhoneNumbers,
       'hasMissingPlans' => HasMissingPlans,
       'totalPhones' => TotalPhones,
       'plans' => Plans
     }.
