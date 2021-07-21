-module(maislurp-client-erlang_webhook_controller_api).

-export([create_webhook/3, create_webhook/4,
         delete_webhook/3, delete_webhook/4,
         get_all_webhook_results/1, get_all_webhook_results/2,
         get_all_webhooks/1, get_all_webhooks/2,
         get_inbox_webhooks_paginated/2, get_inbox_webhooks_paginated/3,
         get_test_webhook_payload/1, get_test_webhook_payload/2,
         get_test_webhook_payload_email_opened/1, get_test_webhook_payload_email_opened/2,
         get_test_webhook_payload_new_attachment/1, get_test_webhook_payload_new_attachment/2,
         get_test_webhook_payload_new_contact/1, get_test_webhook_payload_new_contact/2,
         get_test_webhook_payload_new_email/1, get_test_webhook_payload_new_email/2,
         get_webhook/2, get_webhook/3,
         get_webhook_result/2, get_webhook_result/3,
         get_webhook_results/2, get_webhook_results/3,
         get_webhooks/2, get_webhooks/3,
         send_test_data/2, send_test_data/3]).

-define(BASE_URL, "").

%% @doc Attach a WebHook URL to an inbox
%% Get notified whenever an inbox receives an email via a WebHook URL. An emailID will be posted to this URL every time an email is received for this inbox. The URL must be publicly reachable by the MailSlurp server. You can provide basicAuth values if you wish to secure this endpoint.
-spec create_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_webhook(Ctx, InboxId, WebhookOptions) ->
    create_webhook(Ctx, InboxId, WebhookOptions, #{}).

-spec create_webhook(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_webhook_options:maislurp-client-erlang_create_webhook_options(), maps:map()) -> {ok, maislurp-client-erlang_webhook_dto:maislurp-client-erlang_webhook_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_webhook(Ctx, InboxId, WebhookOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/webhooks"],
    QS = [],
    Headers = [],
    Body1 = WebhookOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'searchFilter', 'size', 'sort'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'searchFilter', 'size', 'sort'], _OptionalParams),
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'searchFilter', 'size', 'sort'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get test webhook payload example. Response content depends on eventName passed. Uses `EMAIL_RECEIVED` as default.
%% 
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

%% @doc Get webhook test payload for email opened event
%% 
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

%% @doc Get a webhook for an Inbox
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
-spec get_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_webhook_result_entity:maislurp-client-erlang_webhook_result_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_webhook_result(Ctx, WebhookResultId) ->
    get_webhook_result(Ctx, WebhookResultId, #{}).

-spec get_webhook_result(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_webhook_result_entity:maislurp-client-erlang_webhook_result_entity(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
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
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'searchFilter', 'size', 'sort'], _OptionalParams),
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


