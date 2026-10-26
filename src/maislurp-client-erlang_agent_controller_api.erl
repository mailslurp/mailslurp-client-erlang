-module(maislurp-client-erlang_agent_controller_api).

-export([agent_acquire_conversation_claim/3, agent_acquire_conversation_claim/4,
         agent_add_conversation_note/3, agent_add_conversation_note/4,
         agent_add_sms_note/3, agent_add_sms_note/4,
         agent_check_inbox_send_policy/3, agent_check_inbox_send_policy/4,
         agent_claim_sms_conversation/3, agent_claim_sms_conversation/4,
         agent_complete_work_item/3, agent_complete_work_item/4,
         agent_create_email_draft/3, agent_create_email_draft/4,
         agent_create_inbox/2, agent_create_inbox/3,
         agent_create_reply_draft/3, agent_create_reply_draft/4,
         agent_create_totp_device_for_base32_secret_key/2, agent_create_totp_device_for_base32_secret_key/3,
         agent_create_totp_device_for_custom/2, agent_create_totp_device_for_custom/3,
         agent_create_totp_device_for_otp_auth_url/2, agent_create_totp_device_for_otp_auth_url/3,
         agent_defer_work_item/3, agent_defer_work_item/4,
         agent_delete_email_draft/3, agent_delete_email_draft/4,
         agent_delete_totp_device/2, agent_delete_totp_device/3,
         agent_extract_email_attachment_text/4, agent_extract_email_attachment_text/5,
         agent_generate_totp_device_code/2, agent_generate_totp_device_code/3,
         agent_get_capabilities/1, agent_get_capabilities/2,
         agent_get_conversation_v2/2, agent_get_conversation_v2/3,
         agent_get_email/2, agent_get_email/3,
         agent_get_email_draft/3, agent_get_email_draft/4,
         agent_get_email_summary/2, agent_get_email_summary/3,
         agent_get_email_thread/2, agent_get_email_thread/3,
         agent_get_latest_inbox_email/2, agent_get_latest_inbox_email/3,
         agent_get_next_work_item/2, agent_get_next_work_item/3,
         agent_get_phone_message_thread_items/3, agent_get_phone_message_thread_items/4,
         agent_get_phone_message_threads/2, agent_get_phone_message_threads/3,
         agent_get_phone_number/2, agent_get_phone_number/3,
         agent_get_phone_numbers/1, agent_get_phone_numbers/2,
         agent_get_received_sms_message/3, agent_get_received_sms_message/4,
         agent_get_received_sms_messages/2, agent_get_received_sms_messages/3,
         agent_get_sent_sms_message/3, agent_get_sent_sms_message/4,
         agent_get_sent_sms_messages/2, agent_get_sent_sms_messages/3,
         agent_get_sms_conversation/2, agent_get_sms_conversation/3,
         agent_get_totp_device/2, agent_get_totp_device/3,
         agent_get_totp_device_by/1, agent_get_totp_device_by/2,
         agent_get_totp_devices/1, agent_get_totp_devices/2,
         agent_list_accessible_inboxes/1, agent_list_accessible_inboxes/2,
         agent_list_automation_events/1, agent_list_automation_events/2,
         agent_list_conversations_v2/1, agent_list_conversations_v2/2,
         agent_list_email_attachments/2, agent_list_email_attachments/3,
         agent_list_email_drafts/2, agent_list_email_drafts/3,
         agent_list_inbox_emails/2, agent_list_inbox_emails/3,
         agent_list_inbox_threads/2, agent_list_inbox_threads/3,
         agent_list_sms_conversations/1, agent_list_sms_conversations/2,
         agent_prepare_work_item_reply/3, agent_prepare_work_item_reply/4,
         agent_release_conversation_claim/3, agent_release_conversation_claim/4,
         agent_release_sms_claim/3, agent_release_sms_claim/4,
         agent_renew_conversation_claim/4, agent_renew_conversation_claim/5,
         agent_renew_sms_claim/4, agent_renew_sms_claim/5,
         agent_reply_to_email/3, agent_reply_to_email/4,
         agent_reply_to_sms/4, agent_reply_to_sms/5,
         agent_report_worker_heartbeat/2, agent_report_worker_heartbeat/3,
         agent_request_conversation_handoff/3, agent_request_conversation_handoff/4,
         agent_request_sms_handoff/3, agent_request_sms_handoff/4,
         agent_search_inbox_emails/3, agent_search_inbox_emails/4,
         agent_send_email_draft/3, agent_send_email_draft/4,
         agent_send_sms/3, agent_send_sms/4,
         agent_update_email_draft/4, agent_update_email_draft/5,
         agent_update_inbox/3, agent_update_inbox/4,
         agent_update_totp_device/3, agent_update_totp_device/4]).

-define(BASE_URL, "").

%% @doc Acquire a renewable conversation claim
%% Atomically leases a conversation to one worker. A conflict means another unexpired worker owns it. Use expectedVersion to reject work selected from stale context.
-spec agent_acquire_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_acquire_agent_conversation_claim_options:maislurp-client-erlang_acquire_agent_conversation_claim_options()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_acquire_conversation_claim(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions) ->
    agent_acquire_conversation_claim(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions, #{}).

-spec agent_acquire_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_acquire_agent_conversation_claim_options:maislurp-client-erlang_acquire_agent_conversation_claim_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_acquire_conversation_claim(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/conversations/", ConversationId, "/claims"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAcquireAgentConversationClaimOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add an internal conversation note
%% Adds agent/operator collaboration context without sending any email to the customer.
-spec agent_add_conversation_note(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_conversation_note_options:maislurp-client-erlang_create_agent_conversation_note_options()) -> {ok, maislurp-client-erlang_agent_conversation_note_dto:maislurp-client-erlang_agent_conversation_note_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_add_conversation_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationNoteOptions) ->
    agent_add_conversation_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationNoteOptions, #{}).

-spec agent_add_conversation_note(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_conversation_note_options:maislurp-client-erlang_create_agent_conversation_note_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_note_dto:maislurp-client-erlang_agent_conversation_note_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_add_conversation_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationNoteOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/conversations/", ConversationId, "/notes"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAgentConversationNoteOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add an internal SMS conversation note
%% 
-spec agent_add_sms_note(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_sms_conversation_note_options:maislurp-client-erlang_create_agent_sms_conversation_note_options()) -> {ok, maislurp-client-erlang_agent_conversation_note_dto:maislurp-client-erlang_agent_conversation_note_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_add_sms_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationNoteOptions) ->
    agent_add_sms_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationNoteOptions, #{}).

-spec agent_add_sms_note(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_sms_conversation_note_options:maislurp-client-erlang_create_agent_sms_conversation_note_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_note_dto:maislurp-client-erlang_agent_conversation_note_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_add_sms_note(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationNoteOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/sms-conversations/", ConversationId, "/notes"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAgentSmsConversationNoteOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Check whether sending rules allow recipients
%% Evaluates effective inbox and account sending rules before an agent creates a send action. A blocked result includes the operator recovery route.
-spec agent_check_inbox_send_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_agent_inbox_send_policy_check_options:maislurp-client-erlang_agent_inbox_send_policy_check_options()) -> {ok, maislurp-client-erlang_agent_inbox_send_policy_dto:maislurp-client-erlang_agent_inbox_send_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_check_inbox_send_policy(Ctx, InboxId, MaislurpClientErlangAgentInboxSendPolicyCheckOptions) ->
    agent_check_inbox_send_policy(Ctx, InboxId, MaislurpClientErlangAgentInboxSendPolicyCheckOptions, #{}).

-spec agent_check_inbox_send_policy(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_agent_inbox_send_policy_check_options:maislurp-client-erlang_agent_inbox_send_policy_check_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_inbox_send_policy_dto:maislurp-client-erlang_agent_inbox_send_policy_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_check_inbox_send_policy(Ctx, InboxId, MaislurpClientErlangAgentInboxSendPolicyCheckOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/inboxes/", InboxId, "/send-policy/check"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAgentInboxSendPolicyCheckOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Acquire an SMS conversation claim
%% 
-spec agent_claim_sms_conversation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_acquire_agent_conversation_claim_options:maislurp-client-erlang_acquire_agent_conversation_claim_options()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_claim_sms_conversation(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions) ->
    agent_claim_sms_conversation(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions, #{}).

-spec agent_claim_sms_conversation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_acquire_agent_conversation_claim_options:maislurp-client-erlang_acquire_agent_conversation_claim_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_claim_sms_conversation(Ctx, ConversationId, MaislurpClientErlangAcquireAgentConversationClaimOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/sms-conversations/", ConversationId, "/claims"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAcquireAgentConversationClaimOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Complete a work item with an idempotent reply
%% Revalidates conversation freshness, sends one threaded reply with an idempotency key, and releases the supplied claim only after the send succeeds.
-spec agent_complete_work_item(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_complete_agent_work_item_options:maislurp-client-erlang_complete_agent_work_item_options()) -> {ok, maislurp-client-erlang_agent_completed_work_item_dto:maislurp-client-erlang_agent_completed_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_complete_work_item(Ctx, ConversationId, MaislurpClientErlangCompleteAgentWorkItemOptions) ->
    agent_complete_work_item(Ctx, ConversationId, MaislurpClientErlangCompleteAgentWorkItemOptions, #{}).

-spec agent_complete_work_item(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_complete_agent_work_item_options:maislurp-client-erlang_complete_agent_work_item_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_completed_work_item_dto:maislurp-client-erlang_agent_completed_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_complete_work_item(Ctx, ConversationId, MaislurpClientErlangCompleteAgentWorkItemOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/work-items/", ConversationId, "/complete"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCompleteAgentWorkItemOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a scoped email draft for an agent
%% Creates a saved draft in the path inbox using the same SendEmailOptions shape as sending, without sending the email.
-spec agent_create_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_email_draft(Ctx, InboxId, MaislurpClientErlangSendEmailOptions) ->
    agent_create_email_draft(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, #{}).

-spec agent_create_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_email_draft(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/inboxes/", InboxId, "/drafts"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sourceEmailId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with an account-wide inbox-manager connection
%% Creates an inbox without changing this agent connection's scopes. Account-wide scope is required so the new inbox is already covered.
-spec agent_create_inbox(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_inbox(Ctx, MaislurpClientErlangCreateInboxDto) ->
    agent_create_inbox(Ctx, MaislurpClientErlangCreateInboxDto, #{}).

-spec agent_create_inbox(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_inbox(Ctx, MaislurpClientErlangCreateInboxDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/inboxes"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxDto,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a correctly threaded reply draft
%% Builds the same recipients and RFC In-Reply-To/References headers as immediate reply, saves them as a draft, and preserves the required threading headers across later agent draft updates.
-spec agent_create_reply_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_reply_draft(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions) ->
    agent_create_reply_draft(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, #{}).

-spec agent_create_reply_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options(), maps:map()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_reply_draft(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/emails/", EmailId, "/reply-draft"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangReplyToEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an agent-managed TOTP device from a base32 secret key
%% 
-spec agent_create_totp_device_for_base32_secret_key(ctx:ctx(), maislurp-client-erlang_create_totp_device_base32_secret_key_options:maislurp-client-erlang_create_totp_device_base32_secret_key_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_base32_secret_key(Ctx, MaislurpClientErlangCreateTotpDeviceBase32SecretKeyOptions) ->
    agent_create_totp_device_for_base32_secret_key(Ctx, MaislurpClientErlangCreateTotpDeviceBase32SecretKeyOptions, #{}).

-spec agent_create_totp_device_for_base32_secret_key(ctx:ctx(), maislurp-client-erlang_create_totp_device_base32_secret_key_options:maislurp-client-erlang_create_totp_device_base32_secret_key_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_base32_secret_key(Ctx, MaislurpClientErlangCreateTotpDeviceBase32SecretKeyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/totp/devices/base32-secret-key"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateTotpDeviceBase32SecretKeyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an agent-managed TOTP device from custom options
%% 
-spec agent_create_totp_device_for_custom(ctx:ctx(), maislurp-client-erlang_create_totp_device_custom_options:maislurp-client-erlang_create_totp_device_custom_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceCustomOptions) ->
    agent_create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceCustomOptions, #{}).

-spec agent_create_totp_device_for_custom(ctx:ctx(), maislurp-client-erlang_create_totp_device_custom_options:maislurp-client-erlang_create_totp_device_custom_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_custom(Ctx, MaislurpClientErlangCreateTotpDeviceCustomOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/totp/devices/custom"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateTotpDeviceCustomOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an agent-managed TOTP device from an OTP Auth URL
%% 
-spec agent_create_totp_device_for_otp_auth_url(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions) ->
    agent_create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, #{}).

-spec agent_create_totp_device_for_otp_auth_url(ctx:ctx(), maislurp-client-erlang_create_totp_device_otp_auth_url_options:maislurp-client-erlang_create_totp_device_otp_auth_url_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_create_totp_device_for_otp_auth_url(Ctx, MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/totp/devices/otp-auth-url"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateTotpDeviceOtpAuthUrlOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Defer a work item to human review
%% Creates or returns the active review handoff and releases the supplied claim after the handoff is durable. Deferral is a normal workflow result rather than an operational failure.
-spec agent_defer_work_item(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_defer_agent_work_item_options:maislurp-client-erlang_defer_agent_work_item_options()) -> {ok, maislurp-client-erlang_agent_deferred_work_item_dto:maislurp-client-erlang_agent_deferred_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_defer_work_item(Ctx, ConversationId, MaislurpClientErlangDeferAgentWorkItemOptions) ->
    agent_defer_work_item(Ctx, ConversationId, MaislurpClientErlangDeferAgentWorkItemOptions, #{}).

-spec agent_defer_work_item(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_defer_agent_work_item_options:maislurp-client-erlang_defer_agent_work_item_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_deferred_work_item_dto:maislurp-client-erlang_agent_deferred_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_defer_work_item(Ctx, ConversationId, MaislurpClientErlangDeferAgentWorkItemOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/work-items/", ConversationId, "/defer"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangDeferAgentWorkItemOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a scoped email draft for an agent
%% Deletes a saved draft without sending it.
-spec agent_delete_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_delete_email_draft(Ctx, InboxId, DraftId) ->
    agent_delete_email_draft(Ctx, InboxId, DraftId, #{}).

-spec agent_delete_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_delete_email_draft(Ctx, InboxId, DraftId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/agent/inboxes/", InboxId, "/drafts/", DraftId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete an agent-managed TOTP device
%% 
-spec agent_delete_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_delete_totp_device(Ctx, Id) ->
    agent_delete_totp_device(Ctx, Id, #{}).

-spec agent_delete_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_delete_totp_device(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/agent/totp/devices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Extract text from a scoped email attachment for an agent
%% Extracts bounded text only after verifying both the email scope and that the attachment belongs to that email. List attachments first instead of guessing IDs.
-spec agent_extract_email_attachment_text(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_extract_attachment_text_result:maislurp-client-erlang_extract_attachment_text_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_extract_email_attachment_text(Ctx, EmailId, AttachmentId) ->
    agent_extract_email_attachment_text(Ctx, EmailId, AttachmentId, #{}).

-spec agent_extract_email_attachment_text(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_extract_attachment_text_result:maislurp-client-erlang_extract_attachment_text_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_extract_email_attachment_text(Ctx, EmailId, AttachmentId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/emails/", EmailId, "/attachments/", AttachmentId, "/text"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangExtractAttachmentTextOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Generate a code for an agent-managed TOTP device
%% 
-spec agent_generate_totp_device_code(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_totp_device_code_dto:maislurp-client-erlang_totp_device_code_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_generate_totp_device_code(Ctx, Id) ->
    agent_generate_totp_device_code(Ctx, Id, #{}).

-spec agent_generate_totp_device_code(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_code_dto:maislurp-client-erlang_totp_device_code_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_generate_totp_device_code(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/totp/devices/", Id, "/code"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['at', 'minSecondsUntilExpire'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Discover this agent connection's capabilities
%% Returns the connection identity, role, effective permission names, declared resource scope, feature availability, and server-enforced limits. Call this once during worker startup instead of hard-coding role behavior.
-spec agent_get_capabilities(ctx:ctx()) -> {ok, maislurp-client-erlang_agent_capabilities_dto:maislurp-client-erlang_agent_capabilities_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_capabilities(Ctx) ->
    agent_get_capabilities(Ctx, #{}).

-spec agent_get_capabilities(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_agent_capabilities_dto:maislurp-client-erlang_agent_capabilities_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_capabilities(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/capabilities"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get one scoped conversation
%% Returns the projected conversation plus this connection's bounded activity timeline, internal notes, and active human-review handoff.
-spec agent_get_conversation_v2(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_agent_conversation_detail_v2_dto:maislurp-client-erlang_agent_conversation_detail_v2_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_conversation_v2(Ctx, ConversationId) ->
    agent_get_conversation_v2(Ctx, ConversationId, #{}).

-spec agent_get_conversation_v2(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_detail_v2_dto:maislurp-client-erlang_agent_conversation_detail_v2_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_conversation_v2(Ctx, ConversationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/conversations/", ConversationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get scoped hydrated email for an agent
%% Returns parsed email content after resolving the message inbox and checking agent scope.
-spec agent_get_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email(Ctx, EmailId) ->
    agent_get_email(Ctx, EmailId, #{}).

-spec agent_get_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/emails/", EmailId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a scoped email draft for an agent
%% Returns a saved draft including the full SendEmailOptions payload.
-spec agent_get_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_draft(Ctx, InboxId, DraftId) ->
    agent_get_email_draft(Ctx, InboxId, DraftId, #{}).

-spec agent_get_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_draft(Ctx, InboxId, DraftId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes/", InboxId, "/drafts/", DraftId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get scoped email summary for an agent
%% Returns lightweight metadata and headers for an email after resolving its inbox and checking the agent key scope.
-spec agent_get_email_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_summary(Ctx, EmailId) ->
    agent_get_email_summary(Ctx, EmailId, #{}).

-spec agent_get_email_summary(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_summary(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/emails/", EmailId, "/summary"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a scoped email thread for an agent
%% Returns thread metadata and ordered messages using an email ID as the authorization anchor. Arbitrary thread-ID probing is not allowed.
-spec agent_get_email_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_scoped_email_thread:maislurp-client-erlang_scoped_email_thread(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_thread(Ctx, EmailId) ->
    agent_get_email_thread(Ctx, EmailId, #{}).

-spec agent_get_email_thread(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_scoped_email_thread:maislurp-client-erlang_scoped_email_thread(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_email_thread(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/emails/", EmailId, "/thread"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get latest scoped inbox email for an agent
%% Waits for and returns the latest email in one scoped inbox. This is the agent-shaped equivalent of latest-message polling.
-spec agent_get_latest_inbox_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_latest_inbox_email(Ctx, InboxId) ->
    agent_get_latest_inbox_email(Ctx, InboxId, #{}).

-spec agent_get_latest_inbox_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_latest_inbox_email(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes/", InboxId, "/emails/latest"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['timeoutMillis', 'unreadOnly', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Claim the next conversation work item
%% Selects the oldest available scoped conversation and atomically claims it for one worker. This combines queue selection and claim acquisition so concurrent workers do not need to coordinate those steps themselves.
-spec agent_get_next_work_item(ctx:ctx(), maislurp-client-erlang_get_next_agent_work_item_options:maislurp-client-erlang_get_next_agent_work_item_options()) -> {ok, maislurp-client-erlang_agent_work_item_dto:maislurp-client-erlang_agent_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_next_work_item(Ctx, MaislurpClientErlangGetNextAgentWorkItemOptions) ->
    agent_get_next_work_item(Ctx, MaislurpClientErlangGetNextAgentWorkItemOptions, #{}).

-spec agent_get_next_work_item(ctx:ctx(), maislurp-client-erlang_get_next_agent_work_item_options:maislurp-client-erlang_get_next_agent_work_item_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_work_item_dto:maislurp-client-erlang_agent_work_item_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_next_work_item(Ctx, MaislurpClientErlangGetNextAgentWorkItemOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/work-items/next"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangGetNextAgentWorkItemOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List SMS thread messages
%% 
-spec agent_get_phone_message_thread_items(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary()) -> {ok, maislurp-client-erlang_page_phone_message_thread_item_projection:maislurp-client-erlang_page_phone_message_thread_item_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_message_thread_items(Ctx, PhoneNumberId, OtherPhoneNumber) ->
    agent_get_phone_message_thread_items(Ctx, PhoneNumberId, OtherPhoneNumber, #{}).

-spec agent_get_phone_message_thread_items(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), binary(), maps:map()) -> {ok, maislurp-client-erlang_page_phone_message_thread_item_projection:maislurp-client-erlang_page_phone_message_thread_item_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_message_thread_items(Ctx, PhoneNumberId, OtherPhoneNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/message-threads/", OtherPhoneNumber, ""],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List SMS threads
%% 
-spec agent_get_phone_message_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_phone_message_thread_projection:maislurp-client-erlang_page_phone_message_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_message_threads(Ctx, PhoneNumberId) ->
    agent_get_phone_message_threads(Ctx, PhoneNumberId, #{}).

-spec agent_get_phone_message_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_phone_message_thread_projection:maislurp-client-erlang_page_phone_message_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_message_threads(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/message-threads"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an assigned phone number
%% 
-spec agent_get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_number(Ctx, PhoneNumberId) ->
    agent_get_phone_number(Ctx, PhoneNumberId, #{}).

-spec agent_get_phone_number(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_phone_number_dto:maislurp-client-erlang_phone_number_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_number(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List assigned phone numbers
%% Returns only active phone numbers explicitly assigned to this agent connection.
-spec agent_get_phone_numbers(ctx:ctx()) -> {ok, maislurp-client-erlang_page_agent_phone_number:maislurp-client-erlang_page_agent_phone_number(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_numbers(Ctx) ->
    agent_get_phone_numbers(Ctx, #{}).

-spec agent_get_phone_numbers(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_agent_phone_number:maislurp-client-erlang_page_agent_phone_number(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_phone_numbers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get received SMS
%% 
-spec agent_get_received_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_received_sms_message(Ctx, PhoneNumberId, SmsId) ->
    agent_get_received_sms_message(Ctx, PhoneNumberId, SmsId, #{}).

-spec agent_get_received_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sms_dto:maislurp-client-erlang_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_received_sms_message(Ctx, PhoneNumberId, SmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms/", SmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List received SMS for an assigned phone number
%% 
-spec agent_get_received_sms_messages(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_received_sms_messages(Ctx, PhoneNumberId) ->
    agent_get_received_sms_messages(Ctx, PhoneNumberId, #{}).

-spec agent_get_received_sms_messages(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sms_projection:maislurp-client-erlang_page_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_received_sms_messages(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'search', 'favourite'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get sent SMS
%% 
-spec agent_get_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sent_sms_message(Ctx, PhoneNumberId, SentSmsId) ->
    agent_get_sent_sms_message(Ctx, PhoneNumberId, SentSmsId, #{}).

-spec agent_get_sent_sms_message(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sent_sms_message(Ctx, PhoneNumberId, SentSmsId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms/sent/", SentSmsId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List sent SMS for an assigned phone number
%% 
-spec agent_get_sent_sms_messages(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sent_sms_messages(Ctx, PhoneNumberId) ->
    agent_get_sent_sms_messages(Ctx, PhoneNumberId, #{}).

-spec agent_get_sent_sms_messages(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_sms_projection:maislurp-client-erlang_page_sent_sms_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sent_sms_messages(Ctx, PhoneNumberId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'search'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get one SMS conversation
%% 
-spec agent_get_sms_conversation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_agent_sms_conversation_detail_dto:maislurp-client-erlang_agent_sms_conversation_detail_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sms_conversation(Ctx, ConversationId) ->
    agent_get_sms_conversation(Ctx, ConversationId, #{}).

-spec agent_get_sms_conversation(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_agent_sms_conversation_detail_dto:maislurp-client-erlang_agent_sms_conversation_detail_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_sms_conversation(Ctx, ConversationId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/sms-conversations/", ConversationId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get an agent-accessible TOTP device
%% 
-spec agent_get_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_device(Ctx, Id) ->
    agent_get_totp_device(Ctx, Id, #{}).

-spec agent_get_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_device(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/totp/devices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Find an agent-accessible TOTP device by name, issuer, or username
%% 
-spec agent_get_totp_device_by(ctx:ctx()) -> {ok, maislurp-client-erlang_totp_device_optional_dto:maislurp-client-erlang_totp_device_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_device_by(Ctx) ->
    agent_get_totp_device_by(Ctx, #{}).

-spec agent_get_totp_device_by(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_optional_dto:maislurp-client-erlang_totp_device_optional_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_device_by(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/totp/devices/by"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['name', 'issuer', 'username'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List agent-accessible TOTP devices
%% 
-spec agent_get_totp_devices(ctx:ctx()) -> {ok, maislurp-client-erlang_page_totp_device_projection:maislurp-client-erlang_page_totp_device_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_devices(Ctx) ->
    agent_get_totp_devices(Ctx, #{}).

-spec agent_get_totp_devices(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_totp_device_projection:maislurp-client-erlang_page_totp_device_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_get_totp_devices(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/totp/devices"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'issuer', 'username'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inboxes accessible to an agent
%% Returns the inbox IDs, addresses, names, and tags visible to this resource-scoped agent key. Agents should use this endpoint instead of guessing inbox IDs.
-spec agent_list_accessible_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_accessible_inbox_list:maislurp-client-erlang_accessible_inbox_list(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_accessible_inboxes(Ctx) ->
    agent_list_accessible_inboxes(Ctx, #{}).

-spec agent_list_accessible_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_accessible_inbox_list:maislurp-client-erlang_accessible_inbox_list(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_accessible_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Read durable scoped automation events
%% Returns an ordered at-least-once event batch. Persist nextCursor after processing and deduplicate by eventId. waitSeconds enables bounded long polling; production workers should not continuously call latest-email polling.
-spec agent_list_automation_events(ctx:ctx()) -> {ok, maislurp-client-erlang_agent_automation_event_page_dto:maislurp-client-erlang_agent_automation_event_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_automation_events(Ctx) ->
    agent_list_automation_events(Ctx, #{}).

-spec agent_list_automation_events(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_agent_automation_event_page_dto:maislurp-client-erlang_agent_automation_event_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_automation_events(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/events"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['cursor', 'eventType', 'size', 'waitSeconds'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List active conversations with an opaque keyset cursor
%% Reads the bounded mail-thread projection and applies current connection scope on every request. Persist nextCursor only after processing the returned page. Exact totals are intentionally omitted.
-spec agent_list_conversations_v2(ctx:ctx()) -> {ok, maislurp-client-erlang_agent_conversation_cursor_page_dto:maislurp-client-erlang_agent_conversation_cursor_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_conversations_v2(Ctx) ->
    agent_list_conversations_v2(Ctx, #{}).

-spec agent_list_conversations_v2(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_cursor_page_dto:maislurp-client-erlang_agent_conversation_cursor_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_conversations_v2(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/conversations"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['workflowState', 'outcome', 'reviewStatus', 'inboxId', 'unread', 'hasAttachments', 'since', 'before', 'search', 'sort', 'cursor', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List attachments on a scoped email for an agent
%% Returns bounded attachment metadata only after verifying the email belongs to an inbox visible to the agent key.
-spec agent_list_email_attachments(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_email_attachments(Ctx, EmailId) ->
    agent_list_email_attachments(Ctx, EmailId, #{}).

-spec agent_list_email_attachments(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_attachment_meta_data:maislurp-client-erlang_attachment_meta_data()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_email_attachments(Ctx, EmailId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/emails/", EmailId, "/attachments"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List scoped email drafts for an agent
%% Lists draft previews for one scoped inbox.
-spec agent_list_email_drafts(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_draft_projection:maislurp-client-erlang_page_email_draft_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_email_drafts(Ctx, InboxId) ->
    agent_list_email_drafts(Ctx, InboxId, #{}).

-spec agent_list_email_drafts(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_draft_projection:maislurp-client-erlang_page_email_draft_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_email_drafts(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes/", InboxId, "/drafts"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List scoped inbox emails for an agent
%% Returns paginated email previews for one inbox after checking the agent key has AGENT_READ_EMAIL and is scoped to the inbox.
-spec agent_list_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_inbox_emails(Ctx, InboxId) ->
    agent_list_inbox_emails(Ctx, InboxId, #{}).

-spec agent_list_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_inbox_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes/", InboxId, "/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'syncConnectors'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List scoped inbox threads for an agent
%% Lists conversation threads for one scoped inbox, including unread state, attachment presence, message count, and latest-message excerpts.
-spec agent_list_inbox_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_thread_projection:maislurp-client-erlang_page_email_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_inbox_threads(Ctx, InboxId) ->
    agent_list_inbox_threads(Ctx, InboxId, #{}).

-spec agent_list_inbox_threads(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_thread_projection:maislurp-client-erlang_page_email_thread_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_inbox_threads(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/inboxes/", InboxId, "/threads"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'search', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List active SMS conversations
%% 
-spec agent_list_sms_conversations(ctx:ctx()) -> {ok, maislurp-client-erlang_agent_sms_conversation_cursor_page_dto:maislurp-client-erlang_agent_sms_conversation_cursor_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_sms_conversations(Ctx) ->
    agent_list_sms_conversations(Ctx, #{}).

-spec agent_list_sms_conversations(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_agent_sms_conversation_cursor_page_dto:maislurp-client-erlang_agent_sms_conversation_cursor_page_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_list_sms_conversations(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/agent/sms-conversations"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['workflowState', 'outcome', 'reviewStatus', 'phoneNumberId', 'unread', 'hasMedia', 'since', 'before', 'search', 'sort', 'cursor', 'size'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Prepare a guarded reply draft
%% Checks that the selected conversation and latest inbound email are still current, then creates a correctly threaded reply draft. An optional internal note records context for human review without sending email.
-spec agent_prepare_work_item_reply(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_prepare_agent_reply_options:maislurp-client-erlang_prepare_agent_reply_options()) -> {ok, maislurp-client-erlang_agent_prepared_reply_dto:maislurp-client-erlang_agent_prepared_reply_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_prepare_work_item_reply(Ctx, ConversationId, MaislurpClientErlangPrepareAgentReplyOptions) ->
    agent_prepare_work_item_reply(Ctx, ConversationId, MaislurpClientErlangPrepareAgentReplyOptions, #{}).

-spec agent_prepare_work_item_reply(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_prepare_agent_reply_options:maislurp-client-erlang_prepare_agent_reply_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_prepared_reply_dto:maislurp-client-erlang_agent_prepared_reply_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_prepare_work_item_reply(Ctx, ConversationId, MaislurpClientErlangPrepareAgentReplyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/work-items/", ConversationId, "/prepare-reply"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangPrepareAgentReplyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Release a conversation claim
%% Release is idempotent; repeating it does not fail.
-spec agent_release_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_release_conversation_claim(Ctx, ConversationId, ClaimId) ->
    agent_release_conversation_claim(Ctx, ConversationId, ClaimId, #{}).

-spec agent_release_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_release_conversation_claim(Ctx, ConversationId, ClaimId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/agent/conversations/", ConversationId, "/claims/", ClaimId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Release an SMS conversation claim
%% 
-spec agent_release_sms_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_release_sms_claim(Ctx, ConversationId, ClaimId) ->
    agent_release_sms_claim(Ctx, ConversationId, ClaimId, #{}).

-spec agent_release_sms_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_release_sms_claim(Ctx, ConversationId, ClaimId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/agent/sms-conversations/", ConversationId, "/claims/", ClaimId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Renew a conversation claim
%% 
-spec agent_renew_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_renew_agent_conversation_claim_options:maislurp-client-erlang_renew_agent_conversation_claim_options()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_renew_conversation_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions) ->
    agent_renew_conversation_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions, #{}).

-spec agent_renew_conversation_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_renew_agent_conversation_claim_options:maislurp-client-erlang_renew_agent_conversation_claim_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_renew_conversation_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/agent/conversations/", ConversationId, "/claims/", ClaimId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRenewAgentConversationClaimOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Renew an SMS conversation claim
%% 
-spec agent_renew_sms_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_renew_agent_conversation_claim_options:maislurp-client-erlang_renew_agent_conversation_claim_options()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_renew_sms_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions) ->
    agent_renew_sms_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions, #{}).

-spec agent_renew_sms_claim(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_renew_agent_conversation_claim_options:maislurp-client-erlang_renew_agent_conversation_claim_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_claim_dto:maislurp-client-erlang_agent_conversation_claim_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_renew_sms_claim(Ctx, ConversationId, ClaimId, MaislurpClientErlangRenewAgentConversationClaimOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/agent/sms-conversations/", ConversationId, "/claims/", ClaimId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangRenewAgentConversationClaimOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reply to a scoped email as an agent
%% Sends a reply using the original conversation context after checking AGENT_REPLY_EMAIL and inbox scope.
-spec agent_reply_to_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions) ->
    agent_reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, #{}).

-spec agent_reply_to_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_reply_to_email_options:maislurp-client-erlang_reply_to_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_reply_to_email(Ctx, EmailId, MaislurpClientErlangReplyToEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/emails/", EmailId, "/reply"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['expectedConversationVersion', 'expectedLatestEmailId'], _OptionalParams),
    Headers = []++maislurp-client-erlang_utils:optional_params(['Idempotency-Key'], _OptionalParams),
    Body1 = MaislurpClientErlangReplyToEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reply to received SMS
%% 
-spec agent_reply_to_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_reply_options:maislurp-client-erlang_sms_reply_options()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_reply_to_sms(Ctx, PhoneNumberId, SmsId, MaislurpClientErlangSmsReplyOptions) ->
    agent_reply_to_sms(Ctx, PhoneNumberId, SmsId, MaislurpClientErlangSmsReplyOptions, #{}).

-spec agent_reply_to_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_reply_options:maislurp-client-erlang_sms_reply_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_reply_to_sms(Ctx, PhoneNumberId, SmsId, MaislurpClientErlangSmsReplyOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms/", SmsId, "/reply"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['expectedConversationVersion', 'expectedLatestMessageId'], _OptionalParams),
    Headers = []++maislurp-client-erlang_utils:optional_params(['Idempotency-Key'], _OptionalParams),
    Body1 = MaislurpClientErlangSmsReplyOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Report a worker heartbeat
%% Records one running worker instance and its deployed release for owner-side health monitoring. Send this during startup and periodically while the process can accept work; it does not claim or mutate a conversation.
-spec agent_report_worker_heartbeat(ctx:ctx(), maislurp-client-erlang_agent_worker_heartbeat_options:maislurp-client-erlang_agent_worker_heartbeat_options()) -> {ok, maislurp-client-erlang_agent_worker_heartbeat_dto:maislurp-client-erlang_agent_worker_heartbeat_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_report_worker_heartbeat(Ctx, MaislurpClientErlangAgentWorkerHeartbeatOptions) ->
    agent_report_worker_heartbeat(Ctx, MaislurpClientErlangAgentWorkerHeartbeatOptions, #{}).

-spec agent_report_worker_heartbeat(ctx:ctx(), maislurp-client-erlang_agent_worker_heartbeat_options:maislurp-client-erlang_agent_worker_heartbeat_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_worker_heartbeat_dto:maislurp-client-erlang_agent_worker_heartbeat_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_report_worker_heartbeat(Ctx, MaislurpClientErlangAgentWorkerHeartbeatOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/runtime/heartbeat"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangAgentWorkerHeartbeatOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Request human review for a conversation
%% Creates or returns the active handoff and moves the shared workflow state into REVIEW without classifying the request as an operational failure.
-spec agent_request_conversation_handoff(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_conversation_handoff_options:maislurp-client-erlang_create_agent_conversation_handoff_options()) -> {ok, maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_request_conversation_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationHandoffOptions) ->
    agent_request_conversation_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationHandoffOptions, #{}).

-spec agent_request_conversation_handoff(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_conversation_handoff_options:maislurp-client-erlang_create_agent_conversation_handoff_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_request_conversation_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentConversationHandoffOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/conversations/", ConversationId, "/handoffs"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAgentConversationHandoffOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Request human review for an SMS conversation
%% 
-spec agent_request_sms_handoff(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_sms_conversation_handoff_options:maislurp-client-erlang_create_agent_sms_conversation_handoff_options()) -> {ok, maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_request_sms_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationHandoffOptions) ->
    agent_request_sms_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationHandoffOptions, #{}).

-spec agent_request_sms_handoff(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_agent_sms_conversation_handoff_options:maislurp-client-erlang_create_agent_sms_conversation_handoff_options(), maps:map()) -> {ok, maislurp-client-erlang_agent_conversation_handoff_dto:maislurp-client-erlang_agent_conversation_handoff_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_request_sms_handoff(Ctx, ConversationId, MaislurpClientErlangCreateAgentSmsConversationHandoffOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/sms-conversations/", ConversationId, "/handoffs"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateAgentSmsConversationHandoffOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search scoped inbox emails for an agent
%% Searches one scoped inbox using explicit field matches and attachment conditions. Use this for deterministic automation recovery instead of repeatedly fetching the latest message.
-spec agent_search_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_search_inbox_emails(Ctx, InboxId, MaislurpClientErlangMatchOptions) ->
    agent_search_inbox_emails(Ctx, InboxId, MaislurpClientErlangMatchOptions, #{}).

-spec agent_search_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_match_options:maislurp-client-erlang_match_options(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_search_inbox_emails(Ctx, InboxId, MaislurpClientErlangMatchOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/inboxes/", InboxId, "/emails/search"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['size', 'sort', 'since', 'before', 'unreadOnly'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangMatchOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a scoped email draft for an agent
%% Sends a saved draft through the existing inbox send pipeline and deletes it only after send success.
-spec agent_send_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_send_email_draft(Ctx, InboxId, DraftId) ->
    agent_send_email_draft(Ctx, InboxId, DraftId, #{}).

-spec agent_send_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_send_email_draft(Ctx, InboxId, DraftId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/inboxes/", InboxId, "/drafts/", DraftId, "/send"],
    QS = [],
    Headers = []++maislurp-client-erlang_utils:optional_params(['Idempotency-Key'], _OptionalParams),
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send SMS from an assigned phone number
%% 
-spec agent_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions) ->
    agent_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions, #{}).

-spec agent_send_sms(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_sms_send_options:maislurp-client-erlang_sms_send_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_sms_dto:maislurp-client-erlang_sent_sms_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_send_sms(Ctx, PhoneNumberId, MaislurpClientErlangSmsSendOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/agent/phone-numbers/", PhoneNumberId, "/sms"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['expectedConversationVersion', 'expectedLatestMessageId'], _OptionalParams),
    Headers = []++maislurp-client-erlang_utils:optional_params(['Idempotency-Key'], _OptionalParams),
    Body1 = MaislurpClientErlangSmsSendOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a scoped email draft for an agent
%% Replaces the SendEmailOptions stored for a draft. The draft remains attached to its original inbox.
-spec agent_update_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_email_draft(Ctx, InboxId, DraftId, MaislurpClientErlangSendEmailOptions) ->
    agent_update_email_draft(Ctx, InboxId, DraftId, MaislurpClientErlangSendEmailOptions, #{}).

-spec agent_update_email_draft(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_email_draft_dto:maislurp-client-erlang_email_draft_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_email_draft(Ctx, InboxId, DraftId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/agent/inboxes/", InboxId, "/drafts/", DraftId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an inbox visible to an inbox-manager connection
%% 
-spec agent_update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions) ->
    agent_update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, #{}).

-spec agent_update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/agent/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateInboxOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update an agent-managed TOTP device
%% 
-spec agent_update_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_totp_device_options:maislurp-client-erlang_update_totp_device_options()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_totp_device(Ctx, Id, MaislurpClientErlangUpdateTotpDeviceOptions) ->
    agent_update_totp_device(Ctx, Id, MaislurpClientErlangUpdateTotpDeviceOptions, #{}).

-spec agent_update_totp_device(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_totp_device_options:maislurp-client-erlang_update_totp_device_options(), maps:map()) -> {ok, maislurp-client-erlang_totp_device_dto:maislurp-client-erlang_totp_device_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
agent_update_totp_device(Ctx, Id, MaislurpClientErlangUpdateTotpDeviceOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/agent/totp/devices/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateTotpDeviceOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


