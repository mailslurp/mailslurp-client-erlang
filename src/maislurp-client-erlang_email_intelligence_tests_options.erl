-module(maislurp-client-erlang_email_intelligence_tests_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_intelligence_tests_options/0]).

-type maislurp-client-erlang_email_intelligence_tests_options() ::
    #{ 'checkRandomLocalPart' => boolean(),
       'checkFreeProvider' => boolean(),
       'checkHttpsWebsite' => boolean(),
       'checkDns' => boolean(),
       'checkDomainAgeHint' => boolean()
     }.

encode(#{ 'checkRandomLocalPart' := CheckRandomLocalPart,
          'checkFreeProvider' := CheckFreeProvider,
          'checkHttpsWebsite' := CheckHttpsWebsite,
          'checkDns' := CheckDns,
          'checkDomainAgeHint' := CheckDomainAgeHint
        }) ->
    #{ 'checkRandomLocalPart' => CheckRandomLocalPart,
       'checkFreeProvider' => CheckFreeProvider,
       'checkHttpsWebsite' => CheckHttpsWebsite,
       'checkDns' => CheckDns,
       'checkDomainAgeHint' => CheckDomainAgeHint
     }.
