-module(maislurp-client-erlang_describe_mail_server_domain_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_describe_mail_server_domain_result/0]).

-type maislurp-client-erlang_describe_mail_server_domain_result() ::
    #{ 'domain' := binary(),
       'message' => binary(),
       'mxRecords' := list()
     }.

encode(#{ 'domain' := Domain,
          'message' := Message,
          'mxRecords' := MxRecords
        }) ->
    #{ 'domain' => Domain,
       'message' => Message,
       'mxRecords' => MxRecords
     }.
