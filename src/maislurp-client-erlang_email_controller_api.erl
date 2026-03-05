-module(maislurp-client-erlang_email_controller_api).

-export([apply_imap_flag_operation/3, apply_imap_flag_operation/4,
         can_send/3, can_send/4,
         check_email_body/2, check_email_body/3,
         check_email_body_feature_support/2, check_email_body_feature_support/3,
         check_email_client_support/2, check_email_client_support/3,
         delete_all_emails/1, delete_all_emails/2,
         delete_email/2, delete_email/3,
         download_attachment/3, download_attachment/4,
         download_attachment_base64/3, download_attachment_base64/4,
         download_body/2, download_body/3,
         download_body_bytes/2, download_body_bytes/3,
         forward_email/3, forward_email/4,
         get_attachment_meta_data/3, get_attachment_meta_data/4,
         get_email/2, get_email/3,
         get_email_attachments/2, get_email_attachments/3,
         get_email_codes/3, get_email_codes/4,
         get_email_content_match/3, get_email_content_match/4,
         get_email_content_part/3, get_email_content_part/4,
         get_email_content_part_content/3, get_email_content_part_content/4,
         get_email_count/1, get_email_count/2,
         get_email_html/2, get_email_html/3,
         get_email_html_json/2, get_email_html_json/3,
         get_email_html_query/3, get_email_html_query/4,
         get_email_links/2, get_email_links/3,
         get_email_preview_urls/2, get_email_preview_urls/3,
         get_email_screenshot_as_base64/3, get_email_screenshot_as_base64/4,
         get_email_screenshot_as_binary/3, get_email_screenshot_as_binary/4,
         get_email_signature/2, get_email_signature/3,
         get_email_summary/2, get_email_summary/3,
         get_email_text_lines/2, get_email_text_lines/3,
         get_email_thread/2, get_email_thread/3,
         get_email_thread_items/2, get_email_thread_items/3,
         get_email_threads/1, get_email_threads/2,
         get_emails_offset_paginated/1, get_emails_offset_paginated/2,
         get_emails_paginated/1, get_emails_paginated/2,
         get_gravatar_url_for_email_address/2, get_gravatar_url_for_email_address/3,
         get_latest_email/1, get_latest_email/2,
         get_latest_email_in_inbox1/2, get_latest_email_in_inbox1/3,
         get_organization_emails_paginated/1, get_organization_emails_paginated/2,
         get_raw_email_contents/2, get_raw_email_contents/3,
         get_raw_email_json/2, get_raw_email_json/3,
         get_unread_email_count/1, get_unread_email_count/2,
         mark_all_as_read/1, mark_all_as_read/2,
         mark_as_read/2, mark_as_read/3,
         reply_to_email/3, reply_to_email/4,
         search_emails/2, search_emails/3,
         send_email_source_optional/2, send_email_source_optional/3,
         set_email_favourited/3, set_email_favourited/4,
         validate_email/2, validate_email/3]).

-define(BASE_URL, "").

%% @doc Set IMAP flags associated with a message. Only supports '\\Seen' flag.
%% Applies RFC3501 IMAP flag operations on a message. Current implementation supports read/unread semantics via the `\\\\Seen` flag only.
-spec apply_imap_flag_operation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_imap_flag_operation_options:maislurp-client-erlang_imap_flag_operation_options()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
apply_imap_flag_operation(Ctx, EmailId, MaislurpClientErlangImapFlagOperationOptions) ->
    apply_imap_flag_operation(Ctx, EmailId, MaislurpClientErlangImapFlagOperationOptions, #{}).

-spec apply_imap_flag_operation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_imap_flag_operation_options:maislurp-client-erlang_imap_flag_operation_options(), maps:map()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
apply_imap_flag_operation(Ctx, EmailId, MaislurpClientErlangImapFlagOperationOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/imap-flag-operation"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangImapFlagOperationOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check whether an email send would be accepted
%% Validates sender/inbox context and recipient eligibility before attempting a send. Useful for preflight checks in UI or test workflows.
-spec can_send(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_can_send_email_results:maislurp-client-erlang_can_send_email_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
can_send(Ctx, InboxId, MaislurpClientErlangSendEmailOptions) ->
    can_send(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, #{}).

-spec can_send(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_can_send_email_results:maislurp-client-erlang_can_send_email_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
can_send(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/can-send"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check email body for broken links, images, and spelling issues
%% Runs content quality checks against hydrated email body content. This endpoint performs outbound HTTP checks for linked resources, so avoid use with sensitive or stateful URLs.
-spec check_email_body(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_check_email_body_results:maislurp-client-erlang_check_email_body_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_body(Ctx, EmailId) ->
    check_email_body(Ctx, EmailId, #{}).

-spec check_email_body(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_check_email_body_results:maislurp-client-erlang_check_email_body_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_body(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/check-email-body"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check client support for features used in a stored email body
%% Detects HTML/CSS features in the target email body and reports compatibility across major email clients and devices.
-spec check_email_body_feature_support(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_check_email_body_feature_support_results:maislurp-client-erlang_check_email_body_feature_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_body_feature_support(Ctx, EmailId) ->
    check_email_body_feature_support(Ctx, EmailId, #{}).

-spec check_email_body_feature_support(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_check_email_body_feature_support_results:maislurp-client-erlang_check_email_body_feature_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_body_feature_support(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/check-email-body-feature-support"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check email-client support for a provided HTML body
%% Evaluates HTML/CSS features in the supplied body and reports support coverage across major email clients and platforms.
-spec check_email_client_support(ctx:ctx(), maislurp-client-erlang_check_email_client_support_options:maislurp-client-erlang_check_email_client_support_options()) -> {ok, maislurp-client-erlang_check_email_client_support_results:maislurp-client-erlang_check_email_client_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_client_support(Ctx, MaislurpClientErlangCheckEmailClientSupportOptions) ->
    check_email_client_support(Ctx, MaislurpClientErlangCheckEmailClientSupportOptions, #{}).

-spec check_email_client_support(ctx:ctx(), maislurp-client-erlang_check_email_client_support_options:maislurp-client-erlang_check_email_client_support_options(), maps:map()) -> {ok, maislurp-client-erlang_check_email_client_support_results:maislurp-client-erlang_check_email_client_support_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
check_email_client_support(Ctx, MaislurpClientErlangCheckEmailClientSupportOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/check-email-client-support"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCheckEmailClientSupportOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all emails in all inboxes.
%% Deletes all emails for the authenticated account context. This operation is destructive and cannot be undone.
-spec delete_all_emails(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_emails(Ctx) ->
    delete_all_emails(Ctx, #{}).

-spec delete_all_emails(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an email
%% Deletes a single email from account scope. Operation is destructive and not reversible.
-spec delete_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email(Ctx, EmailId) ->
    delete_email(Ctx, EmailId, #{}).

-spec delete_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_email(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/emails/", EmailId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachment bytes. Returned as `octet-stream` with content type header. If you have trouble with byte responses try the `downloadAttachmentBase64` response endpoints and convert the base 64 encoded content to a file or string.
%% Returns attachment bytes by attachment ID. Use attachment IDs from email payloads or attachment listing endpoints.
-spec download_attachment(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment(Ctx, EmailId, AttachmentId) ->
    download_attachment(Ctx, EmailId, AttachmentId, #{}).

-spec download_attachment(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment(Ctx, EmailId, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/attachments/", AttachmentId, ""],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['apiKey'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachment as base64 encoded string as an alternative to binary responses. Decode the `base64FileContents` as a `utf-8` encoded string or array of bytes depending on the `contentType`.
%% Returns attachment payload as base64 in JSON. Useful for clients that cannot reliably consume binary streaming responses.
-spec download_attachment_base64(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_download_attachment_dto:maislurp-client-erlang_download_attachment_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_base64(Ctx, EmailId, AttachmentId) ->
    download_attachment_base64(Ctx, EmailId, AttachmentId, #{}).

-spec download_attachment_base64(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_download_attachment_dto:maislurp-client-erlang_download_attachment_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_attachment_base64(Ctx, EmailId, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/attachments/", AttachmentId, "/base64"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email body as string. Returned as `plain/text` with content type header.
%% Returns hydrated email body text as a string with content type aligned to the underlying body format.
-spec download_body(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_body(Ctx, EmailId) ->
    download_body(Ctx, EmailId, #{}).

-spec download_body(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_body(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/body"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email body in bytes. Returned as `octet-stream` with content type header.
%% Streams hydrated email body bytes with content type derived from the message body format.
-spec download_body_bytes(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_body_bytes(Ctx, EmailId) ->
    download_body_bytes(Ctx, EmailId, #{}).

-spec download_body_bytes(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_byte_array:maislurp-client-erlang_byte_array(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
download_body_bytes(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/body-bytes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Forward email to recipients
%% Forwards an existing email to new recipients. Uses the owning inbox context unless overridden by allowed sender options.
-spec forward_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_forward_email_options:maislurp-client-erlang_forward_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
forward_email(Ctx, EmailId, MaislurpClientErlangForwardEmailOptions) ->
    forward_email(Ctx, EmailId, MaislurpClientErlangForwardEmailOptions, #{}).

-spec forward_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_forward_email_options:maislurp-client-erlang_forward_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
forward_email(Ctx, EmailId, MaislurpClientErlangForwardEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/forward"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangForwardEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email attachment metadata. This is the `contentType` and `contentLength` of an attachment. To get the individual attachments  use the `downloadAttachment` methods.
%% Returns metadata for a specific attachment ID (name, content type, and size fields).
-spec get_attachment_meta_data(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment_meta_data(Ctx, EmailId, AttachmentId) ->
    get_attachment_meta_data(Ctx, EmailId, AttachmentId, #{}).

-spec get_attachment_meta_data(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_attachment_meta_data(Ctx, EmailId, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/attachments/", AttachmentId, "/metadata"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get hydrated email (headers and body)
%% Returns parsed email content including headers and body fields. Accessing hydrated content may mark the email as read depending on read-state rules.
-spec get_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email(Ctx, EmailId) ->
    get_email(Ctx, EmailId, #{}).

-spec get_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List attachment metadata for an email
%% Returns metadata for all attachment IDs associated with the email (name, content type, size, and IDs).
-spec get_email_attachments(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_attachments(Ctx, EmailId) ->
    get_email_attachments(Ctx, EmailId, #{}).

-spec get_email_attachments(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_attachments(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/attachments"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract verification codes from an email
%% Extracts one-time passcodes and similar tokens from email content. Supports deterministic extraction now with method/fallback flags (`AUTO`, `PATTERN`, `LLM`, `OCR`, `OCR_THEN_LLM`) for QA and future advanced pipelines.
-spec get_email_codes(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_extract_codes_result:maislurp-client-erlang_extract_codes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_codes(Ctx, EmailId) ->
    get_email_codes(Ctx, EmailId, #{}).

-spec get_email_codes(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_extract_codes_result:maislurp-client-erlang_extract_codes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_codes(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/codes"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangExtractCodesOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Run regex against hydrated email body and return matches
%% Executes a Java regex pattern over hydrated email body text and returns the full match plus capture groups. Pattern syntax follows Java `Pattern` rules.
-spec get_email_content_match(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_content_match_options:maislurp-client-erlang_content_match_options()) -> {ok, maislurp-client-erlang_email_content_match_result:maislurp-client-erlang_email_content_match_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_match(Ctx, EmailId, MaislurpClientErlangContentMatchOptions) ->
    get_email_content_match(Ctx, EmailId, MaislurpClientErlangContentMatchOptions, #{}).

-spec get_email_content_match(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_content_match_options:maislurp-client-erlang_content_match_options(), maps:map()) -> {ok, maislurp-client-erlang_email_content_match_result:maislurp-client-erlang_email_content_match_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_match(Ctx, EmailId, MaislurpClientErlangContentMatchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/contentMatch"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangContentMatchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email content part by content type
%% Extracts one MIME body part by `contentType` and optional `index`, returned in a structured DTO with metadata.
-spec get_email_content_part(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_email_content_part_result:maislurp-client-erlang_email_content_part_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_part(Ctx, EmailId, ContentType) ->
    get_email_content_part(Ctx, EmailId, ContentType, #{}).

-spec get_email_content_part(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_email_content_part_result:maislurp-client-erlang_email_content_part_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_part(Ctx, EmailId, ContentType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/contentPart"],
    QS = lists:flatten([{<<"contentType">>, ContentType}])++maislurp-client-erlang_utils:optional_params(['strict', 'index'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get multipart content part as raw response
%% Extracts one MIME body part by `contentType` and optional `index`, and returns raw content with matching response content type when valid.
-spec get_email_content_part_content(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_part_content(Ctx, EmailId, ContentType) ->
    get_email_content_part_content(Ctx, EmailId, ContentType, #{}).

-spec get_email_content_part_content(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_content_part_content(Ctx, EmailId, ContentType, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/contentPart/raw"],
    QS = lists:flatten([{<<"contentType">>, ContentType}])++maislurp-client-erlang_utils:optional_params(['strict', 'index'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email count
%% Returns total email count for the authenticated user, or count scoped to a specific inbox when `inboxId` is provided.
-spec get_email_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_count(Ctx) ->
    get_email_count(Ctx, #{}).

-spec get_email_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/emails/count"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get hydrated email HTML for browser rendering
%% Returns hydrated HTML body directly with `text/html` content type. Supports temporary access/browser usage and optional CID replacement for inline asset rendering.
-spec get_email_html(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html(Ctx, EmailId) ->
    get_email_html(Ctx, EmailId, #{}).

-spec get_email_html(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/html"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['replaceCidImages'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get hydrated email HTML wrapped in JSON
%% Returns hydrated HTML body and subject in a JSON DTO. Useful for API clients that need structured response payloads instead of raw HTML responses.
-spec get_email_html_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_html_dto:maislurp-client-erlang_email_html_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html_json(Ctx, EmailId) ->
    get_email_html_json(Ctx, EmailId, #{}).

-spec get_email_html_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_html_dto:maislurp-client-erlang_email_html_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html_json(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/html/json"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['replaceCidImages'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Query hydrated HTML body and return matching text lines
%% Applies a JSoup/CSS selector to hydrated HTML email body and returns matching text lines.
-spec get_email_html_query(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_email_text_lines_result:maislurp-client-erlang_email_text_lines_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html_query(Ctx, EmailId, HtmlSelector) ->
    get_email_html_query(Ctx, EmailId, HtmlSelector, #{}).

-spec get_email_html_query(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_email_text_lines_result:maislurp-client-erlang_email_text_lines_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_html_query(Ctx, EmailId, HtmlSelector, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/htmlQuery"],
    QS = lists:flatten([{<<"htmlSelector">>, HtmlSelector}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract links from an email HTML body
%% Parses HTML content and extracts link URLs (`href`). For non-HTML emails this endpoint returns a validation error.
-spec get_email_links(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_links_result:maislurp-client-erlang_email_links_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_links(Ctx, EmailId) ->
    get_email_links(Ctx, EmailId, #{}).

-spec get_email_links(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_links_result:maislurp-client-erlang_email_links_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_links(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/links"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['selector'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email URLs for viewing in browser or downloading
%% Returns precomputed URLs for preview and raw message access for the specified email.
-spec get_email_preview_urls(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_preview_urls:maislurp-client-erlang_email_preview_urls(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_preview_urls(Ctx, EmailId) ->
    get_email_preview_urls(Ctx, EmailId, #{}).

-spec get_email_preview_urls(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_preview_urls:maislurp-client-erlang_email_preview_urls(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_preview_urls(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/urls"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Take a screenshot of an email in a browser and return base64 encoded string
%% Renders the email in a browser engine and returns PNG data as base64. Useful for APIs and dashboards that cannot easily stream binary responses.
-spec get_email_screenshot_as_base64(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_get_email_screenshot_options:maislurp-client-erlang_get_email_screenshot_options()) -> {ok, maislurp-client-erlang_email_screenshot_result:maislurp-client-erlang_email_screenshot_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_screenshot_as_base64(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions) ->
    get_email_screenshot_as_base64(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions, #{}).

-spec get_email_screenshot_as_base64(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_get_email_screenshot_options:maislurp-client-erlang_get_email_screenshot_options(), maps:map()) -> {ok, maislurp-client-erlang_email_screenshot_result:maislurp-client-erlang_email_screenshot_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_screenshot_as_base64(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/screenshot/base64"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGetEmailScreenshotOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Take a screenshot of an email in a browser
%% Renders the email in a browser engine and returns PNG bytes. Intended for visual QA and rendering regression checks.
-spec get_email_screenshot_as_binary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_get_email_screenshot_options:maislurp-client-erlang_get_email_screenshot_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_screenshot_as_binary(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions) ->
    get_email_screenshot_as_binary(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions, #{}).

-spec get_email_screenshot_as_binary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_get_email_screenshot_options:maislurp-client-erlang_get_email_screenshot_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_screenshot_as_binary(Ctx, EmailId, MaislurpClientErlangGetEmailScreenshotOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/screenshot/binary"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGetEmailScreenshotOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract signature from an inbound email
%% Attempts to parse a sender signature block from an email body. Uses raw MIME content parts when possible and falls back to hydrated body parsing. This is heuristic and may not be accurate for all email clients or formats.
-spec get_email_signature(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_signature_parse_result:maislurp-client-erlang_email_signature_parse_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_signature(Ctx, EmailId) ->
    get_email_signature(Ctx, EmailId, #{}).

-spec get_email_signature(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_signature_parse_result:maislurp-client-erlang_email_signature_parse_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_signature(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/signature"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email summary (headers/metadata only)
%% Returns lightweight metadata and headers for an email. Use `getEmail` for hydrated body content or `getRawEmail` for original SMTP content.
-spec get_email_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_summary(Ctx, EmailId) ->
    get_email_summary(Ctx, EmailId, #{}).

-spec get_email_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_summary(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/summary"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['decode'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract normalized text lines from email body
%% Converts email body content to line-based plain text with optional HTML entity decoding and custom line separator.
-spec get_email_text_lines(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_text_lines_result:maislurp-client-erlang_email_text_lines_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_text_lines(Ctx, EmailId) ->
    get_email_text_lines(Ctx, EmailId, #{}).

-spec get_email_text_lines(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_text_lines_result:maislurp-client-erlang_email_text_lines_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_text_lines(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/textLines"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['decodeHtmlEntities', 'lineSeparator'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email thread metadata by thread ID
%% Returns thread metadata built from RFC 5322 `Message-ID`, `In-Reply-To`, and `References` headers. Use `getEmailThreadItems` to fetch the thread messages.
-spec get_email_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_thread_dto:maislurp-client-erlang_email_thread_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_thread(Ctx, ThreadId) ->
    get_email_thread(Ctx, ThreadId, #{}).

-spec get_email_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_thread_dto:maislurp-client-erlang_email_thread_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_thread(Ctx, ThreadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/threads/", ThreadId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get messages in a specific email thread
%% Returns all messages in a thread ordered by `createdAt` using the requested sort direction.
-spec get_email_thread_items(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_thread_items_dto:maislurp-client-erlang_email_thread_items_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_thread_items(Ctx, ThreadId) ->
    get_email_thread_items(Ctx, ThreadId, #{}).

-spec get_email_thread_items(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_thread_items_dto:maislurp-client-erlang_email_thread_items_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_thread_items(Ctx, ThreadId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/threads/", ThreadId, "/items"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List email threads in paginated form
%% Lists conversation threads inferred from `Message-ID`, `In-Reply-To`, and `References`. Supports filtering by inbox, search text, and time range.
-spec get_email_threads(ctx:ctx()) -> {ok, maislurp-client-erlang_page_email_thread_projection:maislurp-client-erlang_page_email_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_threads(Ctx) ->
    get_email_threads(Ctx, #{}).

-spec get_email_threads(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_email_thread_projection:maislurp-client-erlang_page_email_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_email_threads(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/threads"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['htmlSelector', 'page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all emails in all inboxes in paginated form. Email API list all.
%% Offset-style pagination endpoint for listing emails across inboxes. Supports inbox filters, unread-only, search, date boundaries, favourites, connector sync, plus-address filtering, and explicit include IDs.
-spec get_emails_offset_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails_offset_paginated(Ctx) ->
    get_emails_offset_paginated(Ctx, #{}).

-spec get_emails_offset_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails_offset_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/offset-paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'unreadOnly', 'searchFilter', 'since', 'before', 'favourited', 'syncConnectors', 'plusAddressId', 'include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all emails in all inboxes in paginated form. Email API list all.
%% Primary paginated email listing endpoint. Returns emails across inboxes with support for inbox filters, unread-only, search, date boundaries, favourites, connector sync, and plus-address filtering.
-spec get_emails_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails_paginated(Ctx) ->
    get_emails_paginated(Ctx, #{}).

-spec get_emails_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'unreadOnly', 'searchFilter', 'since', 'before', 'syncConnectors', 'plusAddressId', 'favourited'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Gravatar URL for an email address
%% Builds a Gravatar image URL from the provided email address and optional size. This endpoint does not fetch image bytes; it only returns the computed URL.
-spec get_gravatar_url_for_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_gravatar_url:maislurp-client-erlang_gravatar_url(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_gravatar_url_for_email_address(Ctx, EmailAddress) ->
    get_gravatar_url_for_email_address(Ctx, EmailAddress, #{}).

-spec get_gravatar_url_for_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_gravatar_url:maislurp-client-erlang_gravatar_url(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_gravatar_url_for_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/gravatarFor"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params(['size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get latest email in all inboxes. Most recently received.
%% Returns the most recently received email across all inboxes or an optional subset of inbox IDs.
-spec get_latest_email(ctx:ctx()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email(Ctx) ->
    get_latest_email(Ctx, #{}).

-spec get_latest_email(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/latest"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxIds'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
%% Returns the newest email for the specified inbox ID. For polling/wait semantics use wait endpoints.
-spec get_latest_email_in_inbox1(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email_in_inbox1(Ctx, InboxId) ->
    get_latest_email_in_inbox1(Ctx, InboxId, #{}).

-spec get_latest_email_in_inbox1(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email_in_inbox1(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/latestIn"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List organization-visible emails
%% Returns paginated emails visible through organization/team access. Supports inbox filtering, unread-only filtering, search, favourites, plus-address filtering, and optional connector sync.
-spec get_organization_emails_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_emails_paginated(Ctx) ->
    get_organization_emails_paginated(Ctx, #{}).

-spec get_organization_emails_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_emails_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/organization"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'page', 'size', 'sort', 'unreadOnly', 'searchFilter', 'since', 'before', 'syncConnectors', 'favourited', 'plusAddressId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get raw email string. Returns unparsed raw SMTP message with headers and body.
%% Returns the original unparsed SMTP/MIME message as `text/plain`. Use JSON variant if your client expects JSON transport.
-spec get_raw_email_contents(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_email_contents(Ctx, EmailId) ->
    get_raw_email_contents(Ctx, EmailId, #{}).

-spec get_raw_email_contents(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_email_contents(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/raw"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get raw email in JSON. Unparsed SMTP message in JSON wrapper format.
%% Returns the original unparsed SMTP/MIME message wrapped in a JSON DTO for API clients that avoid plain-text stream responses.
-spec get_raw_email_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_raw_email_json:maislurp-client-erlang_raw_email_json(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_email_json(Ctx, EmailId) ->
    get_raw_email_json(Ctx, EmailId, #{}).

-spec get_raw_email_json(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_raw_email_json:maislurp-client-erlang_raw_email_json(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_raw_email_json(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/", EmailId, "/raw/json"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get unread email count
%% Returns unread email count. An email is considered read after dashboard/API retrieval depending on your read workflow.
-spec get_unread_email_count(ctx:ctx()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_email_count(Ctx) ->
    get_unread_email_count(Ctx, #{}).

-spec get_unread_email_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_unread_count:maislurp-client-erlang_unread_count(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_unread_email_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/emails/unreadCount"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mark all emails as read or unread
%% Sets read state for all emails, optionally scoped to one inbox. Use `read=false` to reset unread state in bulk.
-spec mark_all_as_read(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
mark_all_as_read(Ctx) ->
    mark_all_as_read(Ctx, #{}).

-spec mark_all_as_read(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
mark_all_as_read(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/emails/read"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['read', 'inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Mark an email as read or unread
%% Sets read state for one email. Useful when implementing custom mailbox workflows that treat viewed messages as unread.
-spec mark_as_read(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
mark_as_read(Ctx, EmailId) ->
    mark_as_read(Ctx, EmailId, #{}).

-spec mark_as_read(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
mark_as_read(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/emails/", EmailId, "/read"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['read'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reply to an email
%% Sends a reply using the original conversation context (subject/thread headers). Reply target resolution honors sender/reply-to semantics.
-spec reply_to_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions) ->
    reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, #{}).

-spec reply_to_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/", EmailId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangReplyToEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all emails by search criteria. Return in paginated form.
%% Searches emails by sender/recipient/address/subject/id fields and returns paginated matches. Does not perform full-text body search.
-spec search_emails(ctx:ctx(), maislurp-client-erlang_search_emails_options:maislurp-client-erlang_search_emails_options()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_emails(Ctx, MaislurpClientErlangSearchEmailsOptions) ->
    search_emails(Ctx, MaislurpClientErlangSearchEmailsOptions, #{}).

-spec search_emails(ctx:ctx(), maislurp-client-erlang_search_emails_options:maislurp-client-erlang_search_emails_options(), maps:map()) -> {ok, maislurp-client-erlang_page_email_projection:maislurp-client-erlang_page_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_emails(Ctx, MaislurpClientErlangSearchEmailsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/search"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['syncConnectors', 'favourited', 'plusAddressId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSearchEmailsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email
%% Sends an email from an existing inbox, or creates a temporary inbox when `inboxId` is not provided. Supports `useDomainPool` and `virtualSend` inbox creation behavior for convenience sends.
-spec send_email_source_optional(ctx:ctx(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_source_optional(Ctx, MaislurpClientErlangSendEmailOptions) ->
    send_email_source_optional(Ctx, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email_source_optional(ctx:ctx(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_source_optional(Ctx, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId', 'useDomainPool', 'virtualSend'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set email favourited state
%% Sets favourite state for an email for dashboard/search workflows.
-spec set_email_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_email_favourited(Ctx, EmailId, Favourited) ->
    set_email_favourited(Ctx, EmailId, Favourited, #{}).

-spec set_email_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_email_favourited(Ctx, EmailId, Favourited, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/emails/", EmailId, "/favourite"],
    QS = lists:flatten([{<<"favourited">>, Favourited}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Validate email HTML contents
%% Runs HTML validation on the email body when HTML is present. Non-HTML emails are treated as valid for this check.
-spec validate_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_validation_dto:maislurp-client-erlang_validation_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_email(Ctx, EmailId) ->
    validate_email(Ctx, EmailId, #{}).

-spec validate_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_validation_dto:maislurp-client-erlang_validation_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
validate_email(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/emails/", EmailId, "/validate"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


