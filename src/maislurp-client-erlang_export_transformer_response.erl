-module(maislurp-client-erlang_export_transformer_response).

-export([encode/1]).

-export_type([maislurp-client-erlang_export_transformer_response/0]).

-type maislurp-client-erlang_export_transformer_response() ::
    #{ 'jobId' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary()
     }.

encode(#{ 'jobId' := JobId,
          'status' := Status
        }) ->
    #{ 'jobId' => JobId,
       'status' => Status
     }.
