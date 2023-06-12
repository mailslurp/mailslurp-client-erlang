-module(maislurp-client-erlang_connector_sync_request_result_exception_cause_stack_trace).

-export([encode/1]).

-export_type([maislurp-client-erlang_connector_sync_request_result_exception_cause_stack_trace/0]).

-type maislurp-client-erlang_connector_sync_request_result_exception_cause_stack_trace() ::
    #{ 'classLoaderName' => binary(),
       'moduleName' => binary(),
       'moduleVersion' => binary(),
       'methodName' => binary(),
       'fileName' => binary(),
       'lineNumber' => integer(),
       'nativeMethod' => boolean(),
       'className' => binary()
     }.

encode(#{ 'classLoaderName' := ClassLoaderName,
          'moduleName' := ModuleName,
          'moduleVersion' := ModuleVersion,
          'methodName' := MethodName,
          'fileName' := FileName,
          'lineNumber' := LineNumber,
          'nativeMethod' := NativeMethod,
          'className' := ClassName
        }) ->
    #{ 'classLoaderName' => ClassLoaderName,
       'moduleName' => ModuleName,
       'moduleVersion' => ModuleVersion,
       'methodName' => MethodName,
       'fileName' => FileName,
       'lineNumber' => LineNumber,
       'nativeMethod' => NativeMethod,
       'className' => ClassName
     }.
