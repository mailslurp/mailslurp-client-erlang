-module(maislurp-client-erlang_check_dns_propagation_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_check_dns_propagation_options/0]).

-type maislurp-client-erlang_check_dns_propagation_options() ::
    #{ 'host' := binary(),
       'recordType' := binary(),
       'expectedValue' => binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'host' := Host,
          'recordType' := RecordType,
          'expectedValue' := ExpectedValue,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'host' => Host,
       'recordType' => RecordType,
       'expectedValue' => ExpectedValue,
       'captchaToken' => CaptchaToken
     }.
