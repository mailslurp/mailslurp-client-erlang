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
%% Apply RFC3501 section-2.3.2 IMAP flag operations on an email
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

%% @doc Check if email can be sent and options are valid.
%% Can user send email to given recipient or is the recipient blocked
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

%% @doc Detect broken links, spelling, and images in email content
%% Find dead links, broken images, and spelling mistakes in email body. Will call included links via HTTP so do not invoke if your links are sensitive or stateful. Any resource that returns a 4xx or 5xx response or is not reachable via HEAD or GET HTTP operations will be considered unhealthy.
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

%% @doc Show which mail clients support the HTML and CSS features used in an email body.
%% Detect HTML and CSS features inside an email body and return a report of email client support across different platforms and versions.
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

%% @doc Show which email programs and devices support the features used in an email body.
%% Evaluate the features used in an email body and return a report of email client support across different platforms and versions.
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
%% Deletes all emails in your account. Be careful as emails cannot be recovered
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
%% Deletes an email and removes it from the inbox. Deleted emails cannot be recovered.
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
%% Returns the specified attachment for a given email as a stream / array of bytes. You can find attachment ids in email responses endpoint responses. The response type is application/octet-stream.
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
%% Returns the specified attachment for a given email as a base 64 encoded string. The response type is application/json. This method is similar to the `downloadAttachment` method but allows some clients to get around issues with binary responses.
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
%% Returns the specified email body for a given email as a string
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
%% Returns the specified email body for a given email as a stream / array of bytes.
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
%% Forward an existing email to new recipients. The sender of the email will be the inbox that received the email you are forwarding. You can override the sender with the `from` option. Note you must have access to the from address in MailSlurp to use the override. For more control consider fetching the email and sending it a new using the send email endpoints.
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
%% Returns the metadata such as name and content-type for a given attachment and email.
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

%% @doc Get email content including headers and body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
%% Returns a email summary object with headers and content. To retrieve the raw unparsed email use the getRawEmail endpoints
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

%% @doc Get all email attachment metadata. Metadata includes name and size of attachments.
%% Returns an array of attachment metadata such as name and content-type for a given email if present.
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

%% @doc Get email content regex pattern match results. Runs regex against email body and returns match groups.
%% Return the matches for a given Java style regex pattern. Do not include the typical `/` at start or end of regex in some languages. Given an example `your code is: 12345` the pattern to extract match looks like `code is: (\\d{6})`. This will return an array of matches with the first matching the entire pattern and the subsequent matching the groups: `['code is: 123456', '123456']` See https://docs.oracle.com/javase/8/docs/api/java/util/regex/Pattern.html for more information of available patterns. 
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
%% Get email body content parts from a multipart email message for a given content type
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

%% @doc Get email content part by content type raw response
%% Get email body content parts from a multipart email message for a given content type and return as response
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
%% 
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

%% @doc Get email content as HTML. For displaying emails in browser context.
%% Retrieve email content as HTML response for viewing in browsers. Decodes quoted-printable entities and converts charset to UTF-8. Pass your API KEY as a request parameter when viewing in a browser: `?apiKey=xxx`. Returns content-type `text/html;charset=utf-8` so you must call expecting that content response not JSON. For JSON response see the `getEmailHTMLJson` method.
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

%% @doc Get email content as HTML in JSON wrapper. For fetching entity decoded HTML content
%% Retrieve email content as HTML response. Decodes quoted-printable entities and converts charset to UTF-8. Returns content-type `application/json;charset=utf-8` so you must call expecting that content response not JSON.
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

%% @doc Parse and return text from an email, stripping HTML and decoding encoded characters
%% Parse an email body and return the content as an array of text. HTML parsing uses JSoup which supports JQuery/CSS style selectors
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

%% @doc Parse and return list of links found in an email (only works for HTML content)
%% HTML parsing uses JSoup and UNIX line separators. Searches content for href attributes
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
%% Get a list of URLs for email content as text/html or raw SMTP message for viewing the message in a browser.
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
%% Capture image of email screenshot and return as base64 encoded string. Useful for embedding in HTML. Be careful as this may contain sensitive information.
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
%% Returns binary octet-stream of screenshot of the given email
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

%% @doc Get email data including headers but not body. Expects email to exist by ID. For emails that may not have arrived yet use the WaitForController.
%% Returns a email summary object with headers. To retrieve the body see getEmail and to get raw unparsed email use the getRawEmail endpoints
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

%% @doc Parse and return text from an email, stripping HTML and decoding encoded characters
%% Parse an email body and return the content as an array of strings. HTML parsing uses JSoup and UNIX line separators.
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

%% @doc Return email thread information. Use items endpoints to get messages for thread.
%% Return email message thread summary from Message-ID, In-Reply-To, and References header. Get messages using items endpoint
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

%% @doc Return email thread items.
%% Return email thread messages based on Message-ID, In-Reply-To, and References header
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

%% @doc Return email threads in paginated form
%% Return email message chains built from Message-ID, In-Reply-To, and References header.
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
%% By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
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
%% By default returns all emails across all inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
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

%% @doc 
%% Get gravatar url for email address
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
%% Get the newest email in all inboxes or in a passed set of inbox IDs
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
%% Get the newest email in all inboxes or in a passed set of inbox IDs
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

%% @doc Get all organization emails. List team or shared test email accounts
%% By default returns all emails across all team inboxes sorted by ascending created at date. Responses are paginated. You can restrict results to a list of inbox IDs. You can also filter out read messages
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
%% Returns a raw, unparsed, and unprocessed email. If your client has issues processing the response it is likely due to the response content-type which is text/plain. If you need a JSON response content-type use the getRawEmailJson endpoint
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
%% Returns a raw, unparsed, and unprocessed email wrapped in a JSON response object for easier handling when compared with the getRawEmail text/plain response
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
%% Get number of emails unread. Unread means has not been viewed in dashboard or returned in an email API response
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
%% Marks all emails as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
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
%% Marks an email as read or unread. Pass boolean read flag to set value. This is useful if you want to read an email but keep it as unread
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
%% Send the reply to the email sender or reply-to and include same subject cc bcc etc. Reply to an email and the contents will be sent with the existing subject to the emails `to`, `cc`, and `bcc`.
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
%% Search emails by given criteria return matches in paginated format. Searches against email recipients, sender, subject, email address and ID. Does not search email body
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
%% Alias for `InboxController.sendEmail` method - see original method for full details. Sends an email from a given inbox that you have created. If no inbox is supplied a random inbox will be created for you and used to send the email.
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
%% Set and return new favorite state for an email
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
%% Validate the HTML content of email if HTML is found. Considered valid if no HTML is present.
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


