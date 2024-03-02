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
       'className' => binary(),
       'nativeMethod' => boolean()
     }.

encode(#{ 'classLoaderName' := ClassLoaderName,
          'moduleName' := ModuleName,
          'moduleVersion' := ModuleVersion,
          'methodName' := MethodName,
          'fileName' := FileName,
          'lineNumber' := LineNumber,
          'className' := ClassName,
          'nativeMethod' := NativeMethod
        }) ->
    #{ 'classLoaderName' => ClassLoaderName,
       'moduleName' => ModuleName,
       'moduleVersion' => ModuleVersion,
       'methodName' => MethodName,
       'fileName' => FileName,
       'lineNumber' => LineNumber,
       'className' => ClassName,
       'nativeMethod' => NativeMethod
     }.
