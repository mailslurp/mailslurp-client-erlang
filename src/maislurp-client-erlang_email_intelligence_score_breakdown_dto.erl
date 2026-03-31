-module(maislurp-client-erlang_email_intelligence_score_breakdown_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_score_breakdown_dto/0]).

-type maislurp-client-erlang_email_intelligence_score_breakdown_dto() ::
    #{ 'randomnessPenalty' := integer(),
       'freeProviderPenalty' := integer(),
       'httpsWebsitePenalty' := integer(),
       'dnsPenalty' := integer(),
       'domainAgePenalty' := integer(),
       'emailValidationPenalty' := integer(),
       'totalPenalty' := integer()
     }.

encode(#{ 'randomnessPenalty' := RandomnessPenalty,
          'freeProviderPenalty' := FreeProviderPenalty,
          'httpsWebsitePenalty' := HttpsWebsitePenalty,
          'dnsPenalty' := DnsPenalty,
          'domainAgePenalty' := DomainAgePenalty,
          'emailValidationPenalty' := EmailValidationPenalty,
          'totalPenalty' := TotalPenalty
        }) ->
    #{ 'randomnessPenalty' => RandomnessPenalty,
       'freeProviderPenalty' => FreeProviderPenalty,
       'httpsWebsitePenalty' => HttpsWebsitePenalty,
       'dnsPenalty' => DnsPenalty,
       'domainAgePenalty' => DomainAgePenalty,
       'emailValidationPenalty' => EmailValidationPenalty,
       'totalPenalty' => TotalPenalty
     }.
