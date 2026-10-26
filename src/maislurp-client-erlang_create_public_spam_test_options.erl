-module(maislurp-client-erlang_create_public_spam_test_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_public_spam_test_options/0]).

-type maislurp-client-erlang_create_public_spam_test_options() ::
    #{ 'fromEmail' => binary(),
       'senderDomain' => binary(),
       'requestedSegment' := binary(),
       'addressFormat' := binary(),
       'captchaToken' => binary()
     }.

encode(#{ 'fromEmail' := FromEmail,
          'senderDomain' := SenderDomain,
          'requestedSegment' := RequestedSegment,
          'addressFormat' := AddressFormat,
          'captchaToken' := CaptchaToken
        }) ->
    #{ 'fromEmail' => FromEmail,
       'senderDomain' => SenderDomain,
       'requestedSegment' => RequestedSegment,
       'addressFormat' => AddressFormat,
       'captchaToken' => CaptchaToken
     }.
