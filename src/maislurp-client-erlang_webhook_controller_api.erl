-module(maislurp-client-erlang_webhook_controller_api).

-export([create_account_webhook/2, create_account_webhook/3,
         create_webhook/3, create_webhook/4,
         delete_all_webhooks/1, delete_all_webhooks/2,
         delete_webhook/3, delete_webhook/4,
         delete_webhook_by_id/2, delete_webhook_by_id/3,
         get_all_webhook_results/1, get_all_webhook_results/2,
         get_all_webhooks/1, get_all_webhooks/2,
         get_inbox_webhooks_paginated/2, get_inbox_webhooks_paginated/3,
         get_json_schema_for_webhook_event/2, get_json_schema_for_webhook_event/3,
         get_json_schema_for_webhook_payload/2, get_json_schema_for_webhook_payload/3,
         get_test_webhook_payload/1, get_test_webhook_payload/2,
         get_test_webhook_payload_bounce/1, get_test_webhook_payload_bounce/2,
         get_test_webhook_payload_bounce_recipient/1, get_test_webhook_payload_bounce_recipient/2,
         get_test_webhook_payload_email_opened/1, get_test_webhook_payload_email_opened/2,
         get_test_webhook_payload_email_read/1, get_test_webhook_payload_email_read/2,
         get_test_webhook_payload_for_webhook/2, get_test_webhook_payload_for_webhook/3,
         get_test_webhook_payload_new_attachment/1, get_test_webhook_payload_new_attachment/2,
         get_test_webhook_payload_new_contact/1, get_test_webhook_payload_new_contact/2,
         get_test_webhook_payload_new_email/1, get_test_webhook_payload_new_email/2,
         get_webhook/2, get_webhook/3,
         get_webhook_result/2, get_webhook_result/3,
         get_webhook_results/2, get_webhook_results/3,
         get_webhook_results_unseen_error_count/1, get_webhook_results_unseen_error_count/2,
         get_webhooks/2, get_webhooks/3,
         redrive_webhook_result/2, redrive_webhook_result/3,
         send_test_data/2, send_test_data/3,
         update_webhook_headers/3, update_webhook_headers/4,
         verify_webhook_signature/2, verify_webhook_signature/3]).

-define(BASE_URL, "").

%% @doc Attach a WebHook URL to an inbox
%% Get notified of account level events such as bounce and bounce recipient.
-spec create_account_webhook(ctx:ctx(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_account_webhook(Ctx, MaislurpClientErlangCreateWebhookOptions) ->
    create_account_webhook(Ctx, MaislurpClientErlangCreateWebhookOptions, #{}).

-spec create_account_webhook(ctx:ctx(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options(), maps:map()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_account_webhook(Ctx, MaislurpClientErlangCreateWebhookOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateWebhookOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Attach a WebHook URL to an inbox
%% Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
-spec create_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_webhook(Ctx, InboxId, MaislurpClientErlangCreateWebhookOptions) ->
    create_webhook(Ctx, InboxId, MaislurpClientErlangCreateWebhookOptions, #{}).

-spec create_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options(), maps:map()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_webhook(Ctx, InboxId, MaislurpClientErlangCreateWebhookOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/webhooks"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateWebhookOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all webhooks
%% 
-spec delete_all_webhooks(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_webhooks(Ctx) ->
    delete_all_webhooks(Ctx, #{}).

-spec delete_all_webhooks(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_webhooks(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/webhooks"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete and disable a Webhook for an Inbox
%% 
-spec delete_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_webhook(Ctx, InboxId, WebhookId) ->
    delete_webhook(Ctx, InboxId, WebhookId, #{}).

-spec delete_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_webhook(Ctx, InboxId, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/", InboxId, "/webhooks/", WebhookId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete a webhook
%% 
-spec delete_webhook_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_webhook_by_id(Ctx, WebhookId) ->
    delete_webhook_by_id(Ctx, WebhookId, #{}).

-spec delete_webhook_by_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_webhook_by_id(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/webhooks/", WebhookId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get results for all webhooks
%% 
-spec get_all_webhook_results(ctx:ctx()) -> {ok, maislurp-client-erlang_page_webhook_result:maislurp-client-erlang_page_webhook_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_webhook_results(Ctx) ->
    get_all_webhook_results(Ctx, #{}).

-spec get_all_webhook_results(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_webhook_result:maislurp-client-erlang_page_webhook_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_webhook_results(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/results"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before', 'unseenOnly'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Webhooks Paginated
%% List webhooks in paginated form. Allows for page index, page size, and sort direction.
-spec get_all_webhooks(ctx:ctx()) -> {ok, maislurp-client-erlang_page_webhook_projection:maislurp-client-erlang_page_webhook_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_webhooks(Ctx) ->
    get_all_webhooks(Ctx, #{}).

-spec get_all_webhooks(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_webhook_projection:maislurp-client-erlang_page_webhook_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_webhooks(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated webhooks for an Inbox
%% 
-spec get_inbox_webhooks_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_webhook_projection:maislurp-client-erlang_page_webhook_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_webhooks_paginated(Ctx, InboxId) ->
    get_inbox_webhooks_paginated(Ctx, InboxId, #{}).

-spec get_inbox_webhooks_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_webhook_projection:maislurp-client-erlang_page_webhook_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_webhooks_paginated(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/webhooks/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get JSON Schema definition for webhook payload by event
-spec get_json_schema_for_webhook_event(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_j_son_schema_dto:maislurp-client-erlang_j_son_schema_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_schema_for_webhook_event(Ctx, Event) ->
    get_json_schema_for_webhook_event(Ctx, Event, #{}).

-spec get_json_schema_for_webhook_event(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_j_son_schema_dto:maislurp-client-erlang_j_son_schema_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_schema_for_webhook_event(Ctx, Event, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/schema"],
    QS = lists:flatten([{<<"event">>, Event}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get JSON Schema definition for webhook payload
-spec get_json_schema_for_webhook_payload(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_j_son_schema_dto:maislurp-client-erlang_j_son_schema_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_schema_for_webhook_payload(Ctx, WebhookId) ->
    get_json_schema_for_webhook_payload(Ctx, WebhookId, #{}).

-spec get_json_schema_for_webhook_payload(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_j_son_schema_dto:maislurp-client-erlang_j_son_schema_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_json_schema_for_webhook_payload(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/", WebhookId, "/schema"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
-spec get_test_webhook_payload(ctx:ctx()) -> {ok, maislurp-client-erlang_abstract_webhook_payload:maislurp-client-erlang_abstract_webhook_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload(Ctx) ->
    get_test_webhook_payload(Ctx, #{}).

-spec get_test_webhook_payload(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_abstract_webhook_payload:maislurp-client-erlang_abstract_webhook_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['eventName'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get webhook test payload for bounce
-spec get_test_webhook_payload_bounce(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_bounce_payload:maislurp-client-erlang_webhook_bounce_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_bounce(Ctx) ->
    get_test_webhook_payload_bounce(Ctx, #{}).

-spec get_test_webhook_payload_bounce(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_bounce_payload:maislurp-client-erlang_webhook_bounce_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_bounce(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/email-bounce-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get webhook test payload for bounce recipient
-spec get_test_webhook_payload_bounce_recipient(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_bounce_recipient_payload:maislurp-client-erlang_webhook_bounce_recipient_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_bounce_recipient(Ctx) ->
    get_test_webhook_payload_bounce_recipient(Ctx, #{}).

-spec get_test_webhook_payload_bounce_recipient(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_bounce_recipient_payload:maislurp-client-erlang_webhook_bounce_recipient_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_bounce_recipient(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/email-bounce-recipient-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get webhook test payload for email opened event
-spec get_test_webhook_payload_email_opened(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_email_opened_payload:maislurp-client-erlang_webhook_email_opened_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_email_opened(Ctx) ->
    get_test_webhook_payload_email_opened(Ctx, #{}).

-spec get_test_webhook_payload_email_opened(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_email_opened_payload:maislurp-client-erlang_webhook_email_opened_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_email_opened(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/email-opened-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get webhook test payload for email opened event
-spec get_test_webhook_payload_email_read(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_email_read_payload:maislurp-client-erlang_webhook_email_read_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_email_read(Ctx) ->
    get_test_webhook_payload_email_read(Ctx, #{}).

-spec get_test_webhook_payload_email_read(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_email_read_payload:maislurp-client-erlang_webhook_email_read_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_email_read(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/email-read-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get example payload for webhook
-spec get_test_webhook_payload_for_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_abstract_webhook_payload:maislurp-client-erlang_abstract_webhook_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_for_webhook(Ctx, WebhookId) ->
    get_test_webhook_payload_for_webhook(Ctx, WebhookId, #{}).

-spec get_test_webhook_payload_for_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_abstract_webhook_payload:maislurp-client-erlang_abstract_webhook_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_for_webhook(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/", WebhookId, "/example"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get webhook test payload for new attachment event
%% 
-spec get_test_webhook_payload_new_attachment(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_new_attachment_payload:maislurp-client-erlang_webhook_new_attachment_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_attachment(Ctx) ->
    get_test_webhook_payload_new_attachment(Ctx, #{}).

-spec get_test_webhook_payload_new_attachment(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_new_attachment_payload:maislurp-client-erlang_webhook_new_attachment_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_attachment(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/new-attachment-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get webhook test payload for new contact event
%% 
-spec get_test_webhook_payload_new_contact(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_new_contact_payload:maislurp-client-erlang_webhook_new_contact_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_contact(Ctx) ->
    get_test_webhook_payload_new_contact(Ctx, #{}).

-spec get_test_webhook_payload_new_contact(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_new_contact_payload:maislurp-client-erlang_webhook_new_contact_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_contact(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/new-contact-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get webhook test payload for new email event
%% 
-spec get_test_webhook_payload_new_email(ctx:ctx()) -> {ok, maislurp-client-erlang_webhook_new_email_payload:maislurp-client-erlang_webhook_new_email_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_email(Ctx) ->
    get_test_webhook_payload_new_email(Ctx, #{}).

-spec get_test_webhook_payload_new_email(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_webhook_new_email_payload:maislurp-client-erlang_webhook_new_email_payload(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_test_webhook_payload_new_email(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/test/new-email-payload"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a webhook
%% 
-spec get_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook(Ctx, WebhookId) ->
    get_webhook(Ctx, WebhookId, #{}).

-spec get_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/", WebhookId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a webhook result for a webhook
%% 
-spec get_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_webhook_result_dto:maislurp-client-erlang_webhook_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_result(Ctx, WebhookResultId) ->
    get_webhook_result(Ctx, WebhookResultId, #{}).

-spec get_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_webhook_result_dto:maislurp-client-erlang_webhook_result_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_result(Ctx, WebhookResultId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/results/", WebhookResultId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a webhook results for a webhook
%% 
-spec get_webhook_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_webhook_result:maislurp-client-erlang_page_webhook_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_results(Ctx, WebhookId) ->
    get_webhook_results(Ctx, WebhookId, #{}).

-spec get_webhook_results(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_webhook_result:maislurp-client-erlang_page_webhook_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_results(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/", WebhookId, "/results"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before', 'unseenOnly'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get count of unseen webhook results with error status
%% 
-spec get_webhook_results_unseen_error_count(ctx:ctx()) -> {ok, maislurp-client-erlang_unseen_error_count_dto:maislurp-client-erlang_unseen_error_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_results_unseen_error_count(Ctx) ->
    get_webhook_results_unseen_error_count(Ctx, #{}).

-spec get_webhook_results_unseen_error_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_unseen_error_count_dto:maislurp-client-erlang_unseen_error_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_results_unseen_error_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/webhooks/results/unseen-count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all webhooks for an Inbox
%% 
-spec get_webhooks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhooks(Ctx, InboxId) ->
    get_webhooks(Ctx, InboxId, #{}).

-spec get_webhooks(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhooks(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/webhooks"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a webhook result and try to resend the original webhook payload
%% Allows you to resend a webhook payload that was already sent. Webhooks that fail are retried automatically for 24 hours and then put in a dead letter queue. You can retry results manually using this method.
-spec redrive_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_webhook_redrive_result:maislurp-client-erlang_webhook_redrive_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
redrive_webhook_result(Ctx, WebhookResultId) ->
    redrive_webhook_result(Ctx, WebhookResultId, #{}).

-spec redrive_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_webhook_redrive_result:maislurp-client-erlang_webhook_redrive_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
redrive_webhook_result(Ctx, WebhookResultId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/results/", WebhookResultId, "/redrive"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send webhook test data
%% 
-spec send_test_data(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_webhook_test_result:maislurp-client-erlang_webhook_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_data(Ctx, WebhookId) ->
    send_test_data(Ctx, WebhookId, #{}).

-spec send_test_data(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_webhook_test_result:maislurp-client-erlang_webhook_test_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_data(Ctx, WebhookId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/", WebhookId, "/test"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a webhook request headers
%% 
-spec update_webhook_headers(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_webhook_headers:maislurp-client-erlang_webhook_headers()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_webhook_headers(Ctx, WebhookId, MaislurpClientErlangWebhookHeaders) ->
    update_webhook_headers(Ctx, WebhookId, MaislurpClientErlangWebhookHeaders, #{}).

-spec update_webhook_headers(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_webhook_headers:maislurp-client-erlang_webhook_headers(), maps:map()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_webhook_headers(Ctx, WebhookId, MaislurpClientErlangWebhookHeaders, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/webhooks/", WebhookId, "/headers"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangWebhookHeaders,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Verify a webhook payload signature
%% Verify a webhook payload using the messageId and signature. This allows you to be sure that MailSlurp sent the payload and not another server.
-spec verify_webhook_signature(ctx:ctx(), maislurp-client-erlang_verify_webhook_signature_options:maislurp-client-erlang_verify_webhook_signature_options()) -> {ok, maislurp-client-erlang_verify_webhook_signature_results:maislurp-client-erlang_verify_webhook_signature_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_webhook_signature(Ctx, MaislurpClientErlangVerifyWebhookSignatureOptions) ->
    verify_webhook_signature(Ctx, MaislurpClientErlangVerifyWebhookSignatureOptions, #{}).

-spec verify_webhook_signature(ctx:ctx(), maislurp-client-erlang_verify_webhook_signature_options:maislurp-client-erlang_verify_webhook_signature_options(), maps:map()) -> {ok, maislurp-client-erlang_verify_webhook_signature_results:maislurp-client-erlang_verify_webhook_signature_results(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
verify_webhook_signature(Ctx, MaislurpClientErlangVerifyWebhookSignatureOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/webhooks/verify"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangVerifyWebhookSignatureOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


