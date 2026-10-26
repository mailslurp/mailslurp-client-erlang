-module(maislurp-client-erlang_email_audit_check).

-export([encode/1]).

-export_type([maislurp-client-erlang_email_audit_check/0]).

-type maislurp-client-erlang_email_audit_check() ::
    #{ 'id' := binary(),
       'category' := binary(),
       'status' := binary(),
       'title' := binary(),
       'message' := binary(),
       'recommendation' := binary(),
       'evidence' := list(),
       'referenceUrl' => binary()
     }.

encode(#{ 'id' := Id,
          'category' := Category,
          'status' := Status,
          'title' := Title,
          'message' := Message,
          'recommendation' := Recommendation,
          'evidence' := Evidence,
          'referenceUrl' := ReferenceUrl
        }) ->
    #{ 'id' => Id,
       'category' => Category,
       'status' => Status,
       'title' => Title,
       'message' => Message,
       'recommendation' => Recommendation,
       'evidence' => Evidence,
       'referenceUrl' => ReferenceUrl
     }.
