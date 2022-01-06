-module(maislurp-client-erlang_describe_mail_server_domain_result).

-export([encode/1]).

-export_type([maislurp-client-erlang_describe_mail_server_domain_result/0]).

-type maislurp-client-erlang_describe_mail_server_domain_result() ::
    #{ 'mxRecords' => list(),
       'domain' => binary(),
       'message' => binary()
     }.

encode(#{ 'mxRecords' := MxRecords,
          'domain' := Domain,
          'message' := Message
        }) ->
    #{ 'mxRecords' => MxRecords,
       'domain' => Domain,
       'message' => Message
     }.
