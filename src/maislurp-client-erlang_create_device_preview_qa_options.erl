-module(maislurp-client-erlang_create_device_preview_qa_options).

-export([encode/1]).

-export_type([maislurp-client-erlang_create_device_preview_qa_options/0]).

-type maislurp-client-erlang_create_device_preview_qa_options() ::
    #{ 'emailAudit' => boolean(),
       'domainMonitor' => boolean(),
       'senderDomain' => binary()
     }.

encode(#{ 'emailAudit' := EmailAudit,
          'domainMonitor' := DomainMonitor,
          'senderDomain' := SenderDomain
        }) ->
    #{ 'emailAudit' => EmailAudit,
       'domainMonitor' => DomainMonitor,
       'senderDomain' => SenderDomain
     }.
