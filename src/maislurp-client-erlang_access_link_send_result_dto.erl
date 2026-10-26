-module(maislurp-client-erlang_access_link_send_result_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_access_link_send_result_dto/0]).

-type maislurp-client-erlang_access_link_send_result_dto() ::
    #{ 'toEmailAddress' := binary(),
       'fromEmailAddress' := binary(),
       'fromName' => binary(),
       'providerCode' := binary()
     }.

encode(#{ 'toEmailAddress' := ToEmailAddress,
          'fromEmailAddress' := FromEmailAddress,
          'fromName' := FromName,
          'providerCode' := ProviderCode
        }) ->
    #{ 'toEmailAddress' => ToEmailAddress,
       'fromEmailAddress' => FromEmailAddress,
       'fromName' => FromName,
       'providerCode' => ProviderCode
     }.
