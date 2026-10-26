-module(maislurp-client-erlang_user_storage_insight_item_dto).

-export([encode/1]).

-export_type([maislurp-client-erlang_user_storage_insight_item_dto/0]).

-type maislurp-client-erlang_user_storage_insight_item_dto() ::
    #{ 'id' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'inboxId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'domainId' => maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(),
       'label' := binary(),
       'emailAddress' => binary(),
       'domain' => binary(),
       'totalBytes' := integer(),
       'emailBytes' := integer(),
       'sentEmailBytes' := integer(),
       'attachmentBytes' := integer(),
       'itemCount' := integer()
     }.

encode(#{ 'id' := Id,
          'inboxId' := InboxId,
          'domainId' := DomainId,
          'label' := Label,
          'emailAddress' := EmailAddress,
          'domain' := Domain,
          'totalBytes' := TotalBytes,
          'emailBytes' := EmailBytes,
          'sentEmailBytes' := SentEmailBytes,
          'attachmentBytes' := AttachmentBytes,
          'itemCount' := ItemCount
        }) ->
    #{ 'id' => Id,
       'inboxId' => InboxId,
       'domainId' => DomainId,
       'label' => Label,
       'emailAddress' => EmailAddress,
       'domain' => Domain,
       'totalBytes' => TotalBytes,
       'emailBytes' => EmailBytes,
       'sentEmailBytes' => SentEmailBytes,
       'attachmentBytes' => AttachmentBytes,
       'itemCount' => ItemCount
     }.
