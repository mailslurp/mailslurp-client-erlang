-module(maislurp-client-erlang_create_device_preview_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_options/0]).

-type maislurp-client-erlang_create_device_preview_options() ::
    #{ 'targets' => list(),
       'allTargets' => boolean(),
       'qa' => maislurp-client-erlang_create_device_preview_qa_options:maislurp-client-erlang_create_device_preview_qa_options(),
       'folderId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()
     }.

encode(#{ 'targets' := Targets,
          'allTargets' := AllTargets,
          'qa' := Qa,
          'folderId' := FolderId
        }) ->
    #{ 'targets' => Targets,
       'allTargets' => AllTargets,
       'qa' => Qa,
       'folderId' => FolderId
     }.
