-module(maislurp-client-erlang_export_transformer_result_job_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_export_transformer_result_job_dto/0]).

-type maislurp-client-erlang_export_transformer_result_job_dto() ::
    #{ 'id' := maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'status' := binary(),
       'format' := binary(),
       'fileName' => binary(),
       'downloadUrl' => binary(),
       'createdAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time(),
       'updatedAt' := maislurp-client-erlang_date_time:maislurp-client-erlang_date_time()
     }.

encode(#{ 'id' := Id,
          'status' := Status,
          'format' := Format,
          'fileName' := FileName,
          'downloadUrl' := DownloadUrl,
          'createdAt' := CreatedAt,
          'updatedAt' := UpdatedAt
        }) ->
    #{ 'id' => Id,
       'status' => Status,
       'format' => Format,
       'fileName' => FileName,
       'downloadUrl' => DownloadUrl,
       'createdAt' => CreatedAt,
       'updatedAt' => UpdatedAt
     }.
