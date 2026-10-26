-module(maislurp-client-erlang_import_email_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_import_email_options/0]).

-type maislurp-client-erlang_import_email_options() ::
    #{ 'rawEmailBase64' := binary(),
       'externalId' => binary(),
       'runPipeline' => boolean(),
       'overrideMessageId' => boolean()
     }.

encode(#{ 'rawEmailBase64' := RawEmailBase64,
          'externalId' := ExternalId,
          'runPipeline' := RunPipeline,
          'overrideMessageId' := OverrideMessageId
        }) ->
    #{ 'rawEmailBase64' => RawEmailBase64,
       'externalId' => ExternalId,
       'runPipeline' => RunPipeline,
       'overrideMessageId' => OverrideMessageId
     }.
