-module(maislurp-client-erlang_phone_sms_prepaid_credits_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_phone_sms_prepaid_credits_dto/0]).

-type maislurp-client-erlang_phone_sms_prepaid_credits_dto() ::
    #{ 'count' := integer(),
       'totalRemainingCredits' := integer(),
       'items' := list()
     }.

encode(#{ 'count' := Count,
          'totalRemainingCredits' := TotalRemainingCredits,
          'items' := Items
        }) ->
    #{ 'count' => Count,
       'totalRemainingCredits' => TotalRemainingCredits,
       'items' => Items
     }.
