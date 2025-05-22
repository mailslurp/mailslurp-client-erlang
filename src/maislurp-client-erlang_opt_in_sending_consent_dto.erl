-module(maislurp-client-erlang_opt_in_sending_consent_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_opt_in_sending_consent_dto/0]).

-type maislurp-client-erlang_opt_in_sending_consent_dto() ::
    #{ 'verificationCodeSent' := boolean(),
       'userHasConsented' := boolean(),
       'canSend' := boolean()
     }.

encode(#{ 'verificationCodeSent' := VerificationCodeSent,
          'userHasConsented' := UserHasConsented,
          'canSend' := CanSend
        }) ->
    #{ 'verificationCodeSent' => VerificationCodeSent,
       'userHasConsented' => UserHasConsented,
       'canSend' => CanSend
     }.
