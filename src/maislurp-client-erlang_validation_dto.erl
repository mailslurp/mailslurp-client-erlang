-module(maislurp-client-erlang_validation_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_validation_dto/0]).

-type maislurp-client-erlang_validation_dto() ::
    #{ 'emailId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'html' := maislurp-client-erlang_h_tml_validation_result:maislurp-client-erlang_h_tml_validation_result()
     }.

encode(#{ 'emailId' := EmailId,
          'html' := Html
        }) ->
    #{ 'emailId' => EmailId,
       'html' => Html
     }.
