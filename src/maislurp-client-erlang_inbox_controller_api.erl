-module(maislurp-client-erlang_inbox_controller_api).

-export([cancel_scheduled_job/2, cancel_scheduled_job/3,
         create_inbox/1, create_inbox/2,
         create_inbox_ruleset/3, create_inbox_ruleset/4,
         create_inbox_with_defaults/1, create_inbox_with_defaults/2,
         create_inbox_with_options/2, create_inbox_with_options/3,
         delete_all_inbox_emails/2, delete_all_inbox_emails/3,
         delete_all_inboxes/1, delete_all_inboxes/2,
         delete_all_inboxes_by_description/2, delete_all_inboxes_by_description/3,
         delete_all_inboxes_by_name/2, delete_all_inboxes_by_name/3,
         delete_all_inboxes_by_tag/2, delete_all_inboxes_by_tag/3,
         delete_inbox/2, delete_inbox/3,
         does_inbox_exist/2, does_inbox_exist/3,
         flush_expired/1, flush_expired/2,
         get_all_inboxes/1, get_all_inboxes/2,
         get_all_inboxes_offset_paginated/1, get_all_inboxes_offset_paginated/2,
         get_all_scheduled_jobs/1, get_all_scheduled_jobs/2,
         get_delivery_statuses_by_inbox_id/2, get_delivery_statuses_by_inbox_id/3,
         get_emails/2, get_emails/3,
         get_imap_access/1, get_imap_access/2,
         get_imap_smtp_access/1, get_imap_smtp_access/2,
         get_imap_smtp_access_env/1, get_imap_smtp_access_env/2,
         get_imap_smtp_access_servers/1, get_imap_smtp_access_servers/2,
         get_inbox/2, get_inbox/3,
         get_inbox_by_email_address/2, get_inbox_by_email_address/3,
         get_inbox_by_name/2, get_inbox_by_name/3,
         get_inbox_count/1, get_inbox_count/2,
         get_inbox_email_count/2, get_inbox_email_count/3,
         get_inbox_emails_paginated/2, get_inbox_emails_paginated/3,
         get_inbox_ids/1, get_inbox_ids/2,
         get_inbox_sent_emails/2, get_inbox_sent_emails/3,
         get_inbox_tags/1, get_inbox_tags/2,
         get_inboxes/1, get_inboxes/2,
         get_latest_email_in_inbox/3, get_latest_email_in_inbox/4,
         get_organization_inboxes/1, get_organization_inboxes/2,
         get_scheduled_job/2, get_scheduled_job/3,
         get_scheduled_jobs_by_inbox_id/2, get_scheduled_jobs_by_inbox_id/3,
         get_smtp_access/1, get_smtp_access/2,
         list_inbox_rulesets/2, list_inbox_rulesets/3,
         list_inbox_tracking_pixels/2, list_inbox_tracking_pixels/3,
         search_inboxes/2, search_inboxes/3,
         send_email/3, send_email/4,
         send_email_and_confirm/3, send_email_and_confirm/4,
         send_email_with_queue/4, send_email_with_queue/5,
         send_smtp_envelope/3, send_smtp_envelope/4,
         send_test_email/2, send_test_email/3,
         send_with_schedule/3, send_with_schedule/4,
         set_inbox_favourited/3, set_inbox_favourited/4,
         update_imap_access/2, update_imap_access/3,
         update_inbox/3, update_inbox/4,
         update_smtp_access/2, update_smtp_access/3]).

-define(BASE_URL, "").

%% @doc Cancel a scheduled email job
%% Get a scheduled email job and cancel it. Will fail if status of job is already cancelled, failed, or complete.
-spec cancel_scheduled_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_scheduled_job(Ctx, JobId) ->
    cancel_scheduled_job(Ctx, JobId, #{}).

-spec cancel_scheduled_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
cancel_scheduled_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/scheduled-jobs/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox email address. An inbox has a real email address and can send and receive emails. Inboxes can be either `SMTP` or `HTTP` inboxes.
%% Create a new inbox and with a randomized email address to send and receive from. Pass emailAddress parameter if you wish to use a specific email address. Creating an inbox is required before sending or receiving emails. If writing tests it is recommended that you create a new inbox during each test method so that it is unique and empty. 
-spec create_inbox(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx) ->
    create_inbox(Ctx, #{}).

-spec create_inbox(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['emailAddress', 'tags', 'name', 'description', 'useDomainPool', 'favourite', 'expiresAt', 'expiresIn', 'allowTeamAccess', 'inboxType', 'virtualInbox', 'useShortAddress', 'domainId', 'domainName', 'prefix'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox ruleset
%% Create a new inbox rule for forwarding, blocking, and allowing emails when sending and receiving
-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions) ->
    create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions, #{}).

-spec create_inbox_ruleset(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_create_inbox_ruleset_options:maislurp-client-erlang_create_inbox_ruleset_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ruleset_dto:maislurp-client-erlang_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_ruleset(Ctx, InboxId, MaislurpClientErlangCreateInboxRulesetOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/rulesets"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxRulesetOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with default options. Uses MailSlurp domain pool address and is private.
%% 
-spec create_inbox_with_defaults(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_defaults(Ctx) ->
    create_inbox_with_defaults(Ctx, #{}).

-spec create_inbox_with_defaults(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_defaults(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/withDefaults"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create an inbox with options. Extended options for inbox creation.
%% Additional endpoint that allows inbox creation with request body options. Can be more flexible that other methods for some clients.
-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto) ->
    create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto, #{}).

-spec create_inbox_with_options(ctx:ctx(), maislurp-client-erlang_create_inbox_dto:maislurp-client-erlang_create_inbox_dto(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
create_inbox_with_options(Ctx, MaislurpClientErlangCreateInboxDto, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/withOptions"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangCreateInboxDto,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all emails in a given inboxes.
%% Deletes all emails in an inbox. Be careful as emails cannot be recovered
-spec delete_all_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inbox_emails(Ctx, InboxId) ->
    delete_all_inbox_emails(Ctx, InboxId, #{}).

-spec delete_all_inbox_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inbox_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/", InboxId, "/deleteAllInboxEmails"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete all inboxes
%% Permanently delete all inboxes and associated email addresses. This will also delete all emails within the inboxes. Be careful as inboxes cannot be recovered once deleted. Note: deleting inboxes will not impact your usage limits. Monthly inbox creation limits are based on how many inboxes were created in the last 30 days, not how many inboxes you currently have.
-spec delete_all_inboxes(ctx:ctx()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes(Ctx) ->
    delete_all_inboxes(Ctx, #{}).

-spec delete_all_inboxes(ctx:ctx(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inboxes by description
%% Permanently delete all inboxes by description
-spec delete_all_inboxes_by_description(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_description(Ctx, Description) ->
    delete_all_inboxes_by_description(Ctx, Description, #{}).

-spec delete_all_inboxes_by_description(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_description(Ctx, Description, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/by-description"],
    QS = lists:flatten([{<<"description">>, Description}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inboxes by name
%% Permanently delete all inboxes by name
-spec delete_all_inboxes_by_name(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_name(Ctx, Name) ->
    delete_all_inboxes_by_name(Ctx, Name, #{}).

-spec delete_all_inboxes_by_name(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_name(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/by-name"],
    QS = lists:flatten([{<<"name">>, Name}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inboxes by tag
%% Permanently delete all inboxes by tag
-spec delete_all_inboxes_by_tag(ctx:ctx(), binary()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_tag(Ctx, Tag) ->
    delete_all_inboxes_by_tag(Ctx, Tag, #{}).

-spec delete_all_inboxes_by_tag(ctx:ctx(), binary(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_all_inboxes_by_tag(Ctx, Tag, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/by-tag"],
    QS = lists:flatten([{<<"tag">>, Tag}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete inbox
%% Permanently delete an inbox and associated email address as well as all emails within the given inbox. This action cannot be undone. Note: deleting an inbox will not affect your account usage. Monthly inbox usage is based on how many inboxes you create within 30 days, not how many exist at time of request.
-spec delete_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox(Ctx, InboxId) ->
    delete_inbox(Ctx, InboxId, #{}).

-spec delete_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
delete_inbox(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Does inbox exist
%% Check if inboxes exist by email address. Useful if you are sending emails to mailslurp addresses
-spec does_inbox_exist(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_exists_dto:maislurp-client-erlang_inbox_exists_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
does_inbox_exist(Ctx, EmailAddress) ->
    does_inbox_exist(Ctx, EmailAddress, #{}).

-spec does_inbox_exist(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_exists_dto:maislurp-client-erlang_inbox_exists_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
does_inbox_exist(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/exists"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params(['allowCatchAll'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Remove expired inboxes
%% Remove any expired inboxes for your account (instead of waiting for scheduled removal on server)
-spec flush_expired(ctx:ctx()) -> {ok, maislurp-client-erlang_flush_expired_inboxes_result:maislurp-client-erlang_flush_expired_inboxes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
flush_expired(Ctx) ->
    flush_expired(Ctx, #{}).

-spec flush_expired(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_flush_expired_inboxes_result:maislurp-client-erlang_flush_expired_inboxes_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
flush_expired(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/inboxes/expired"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List All Inboxes Paginated
%% List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
-spec get_all_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes(Ctx) ->
    get_all_inboxes(Ctx, #{}).

-spec get_all_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'favourite', 'search', 'tag', 'teamAccess', 'since', 'before', 'inboxType', 'inboxFunction', 'domainId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List All Inboxes Offset Paginated
%% List inboxes in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
-spec get_all_inboxes_offset_paginated(ctx:ctx()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes_offset_paginated(Ctx) ->
    get_all_inboxes_offset_paginated(Ctx, #{}).

-spec get_all_inboxes_offset_paginated(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_inboxes_offset_paginated(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/offset-paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'favourite', 'search', 'tag', 'teamAccess', 'since', 'before', 'inboxType', 'inboxFunction', 'domainId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all scheduled email sending jobs for account
%% Schedule sending of emails using scheduled jobs. These can be inbox or account level.
-spec get_all_scheduled_jobs(ctx:ctx()) -> {ok, maislurp-client-erlang_page_scheduled_jobs:maislurp-client-erlang_page_scheduled_jobs(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_scheduled_jobs(Ctx) ->
    get_all_scheduled_jobs(Ctx, #{}).

-spec get_all_scheduled_jobs(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_scheduled_jobs:maislurp-client-erlang_page_scheduled_jobs(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_scheduled_jobs(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/scheduled-jobs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get all email delivery statuses for an inbox
-spec get_delivery_statuses_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_delivery_status:maislurp-client-erlang_page_delivery_status(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_delivery_statuses_by_inbox_id(Ctx, InboxId) ->
    get_delivery_statuses_by_inbox_id(Ctx, InboxId, #{}).

-spec get_delivery_statuses_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_delivery_status:maislurp-client-erlang_page_delivery_status(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_delivery_statuses_by_inbox_id(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/delivery-status"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get emails in an Inbox. This method is not idempotent as it allows retries and waits if you want certain conditions to be met before returning. For simple listing and sorting of known emails use the email controller instead.
%% List emails that an inbox has received. Only emails that are sent to the inbox's email address will appear in the inbox. It may take several seconds for any email you send to an inbox's email address to appear in the inbox. To make this endpoint wait for a minimum number of emails use the `minCount` parameter. The server will retry the inbox database until the `minCount` is satisfied or the `retryTimeout` is reached
-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, InboxId) ->
    get_emails(Ctx, InboxId, #{}).

-spec get_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [maislurp-client-erlang_email_preview:maislurp-client-erlang_email_preview()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['size', 'limit', 'sort', 'retryTimeout', 'delayTimeout', 'minCount', 'unreadOnly', 'before', 'since'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get IMAP access usernames and passwords
-spec get_imap_access(ctx:ctx()) -> {ok, maislurp-client-erlang_imap_access_details:maislurp-client-erlang_imap_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_access(Ctx) ->
    get_imap_access(Ctx, #{}).

-spec get_imap_access(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_imap_access_details:maislurp-client-erlang_imap_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_access(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/imap-access"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get IMAP and SMTP access usernames and passwords
-spec get_imap_smtp_access(ctx:ctx()) -> {ok, maislurp-client-erlang_imap_smtp_access_details:maislurp-client-erlang_imap_smtp_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access(Ctx) ->
    get_imap_smtp_access(Ctx, #{}).

-spec get_imap_smtp_access(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_imap_smtp_access_details:maislurp-client-erlang_imap_smtp_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/imap-smtp-access"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get IMAP and SMTP access details in .env format
-spec get_imap_smtp_access_env(ctx:ctx()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access_env(Ctx) ->
    get_imap_smtp_access_env(Ctx, #{}).

-spec get_imap_smtp_access_env(ctx:ctx(), maps:map()) -> {ok, binary(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access_env(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/imap-smtp-access/env"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get IMAP and SMTP server hosts
-spec get_imap_smtp_access_servers(ctx:ctx()) -> {ok, maislurp-client-erlang_imap_smtp_access_servers:maislurp-client-erlang_imap_smtp_access_servers(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access_servers(Ctx) ->
    get_imap_smtp_access_servers(Ctx, #{}).

-spec get_imap_smtp_access_servers(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_imap_smtp_access_servers:maislurp-client-erlang_imap_smtp_access_servers(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_imap_smtp_access_servers(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/imap-smtp-access/servers"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Inbox. Returns properties of an inbox.
%% Returns an inbox's properties, including its email address and ID.
-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox(Ctx, InboxId) ->
    get_inbox(Ctx, InboxId, #{}).

-spec get_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search for an inbox with the provided email address
%% Get a inbox result by email address
-spec get_inbox_by_email_address(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_by_email_address_result:maislurp-client-erlang_inbox_by_email_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_by_email_address(Ctx, EmailAddress) ->
    get_inbox_by_email_address(Ctx, EmailAddress, #{}).

-spec get_inbox_by_email_address(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_by_email_address_result:maislurp-client-erlang_inbox_by_email_address_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_by_email_address(Ctx, EmailAddress, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/byEmailAddress"],
    QS = lists:flatten([{<<"emailAddress">>, EmailAddress}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search for an inbox with the given name
%% Get a inbox result by name
-spec get_inbox_by_name(ctx:ctx(), binary()) -> {ok, maislurp-client-erlang_inbox_by_name_result:maislurp-client-erlang_inbox_by_name_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_by_name(Ctx, Name) ->
    get_inbox_by_name(Ctx, Name, #{}).

-spec get_inbox_by_name(ctx:ctx(), binary(), maps:map()) -> {ok, maislurp-client-erlang_inbox_by_name_result:maislurp-client-erlang_inbox_by_name_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_by_name(Ctx, Name, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/byName"],
    QS = lists:flatten([{<<"name">>, Name}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get total inbox count
%% 
-spec get_inbox_count(ctx:ctx()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_count(Ctx) ->
    get_inbox_count(Ctx, #{}).

-spec get_inbox_count(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_count(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get email count in inbox
%% 
-spec get_inbox_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_email_count(Ctx, InboxId) ->
    get_inbox_email_count(Ctx, InboxId, #{}).

-spec get_inbox_email_count(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_count_dto:maislurp-client-erlang_count_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_email_count(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails/count"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox emails paginated
%% Get a paginated list of emails in an inbox. Does not hold connections open.
-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, InboxId) ->
    get_inbox_emails_paginated(Ctx, InboxId, #{}).

-spec get_inbox_emails_paginated(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_email_preview:maislurp-client-erlang_page_email_preview(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_emails_paginated(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/emails/paginated"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all inbox IDs
%% Get list of inbox IDs
-spec get_inbox_ids(ctx:ctx()) -> {ok, maislurp-client-erlang_inbox_ids_result:maislurp-client-erlang_inbox_ids_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_ids(Ctx) ->
    get_inbox_ids(Ctx, #{}).

-spec get_inbox_ids(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_inbox_ids_result:maislurp-client-erlang_inbox_ids_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_ids(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/ids"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Inbox Sent Emails
%% Returns an inbox's sent email receipts. Call individual sent email endpoints for more details. Note for privacy reasons the full body of sent emails is never stored. An MD5 hash hex is available for comparison instead.
-spec get_inbox_sent_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_sent_emails(Ctx, InboxId) ->
    get_inbox_sent_emails(Ctx, InboxId, #{}).

-spec get_inbox_sent_emails(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_sent_email_projection:maislurp-client-erlang_page_sent_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_sent_emails(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/sent"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get inbox tags
%% Get all inbox tags
-spec get_inbox_tags(ctx:ctx()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_tags(Ctx) ->
    get_inbox_tags(Ctx, #{}).

-spec get_inbox_tags(ctx:ctx(), maps:map()) -> {ok, [binary()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inbox_tags(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/tags"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Inboxes and email addresses
%% List the inboxes you have created. Note use of the more advanced `getAllInboxes` is recommended and allows paginated access using a limit and sort parameter.
-spec get_inboxes(ctx:ctx()) -> {ok, [maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx) ->
    get_inboxes(Ctx, #{}).

-spec get_inboxes(ctx:ctx(), maps:map()) -> {ok, [maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto()], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['size', 'sort', 'since', 'excludeCatchAllInboxes', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get latest email in an inbox. Use `WaitForController` to get emails that may not have arrived yet.
%% Get the newest email in an inbox or wait for one to arrive
-spec get_latest_email_in_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email_in_inbox(Ctx, InboxId, TimeoutMillis) ->
    get_latest_email_in_inbox(Ctx, InboxId, TimeoutMillis, #{}).

-spec get_latest_email_in_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), integer(), maps:map()) -> {ok, maislurp-client-erlang_email:maislurp-client-erlang_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_latest_email_in_inbox(Ctx, InboxId, TimeoutMillis, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/getLatestEmail"],
    QS = lists:flatten([{<<"inboxId">>, InboxId}, {<<"timeoutMillis">>, TimeoutMillis}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Organization Inboxes Paginated
%% List organization inboxes in paginated form. These are inboxes created with `allowTeamAccess` flag enabled. Organization inboxes are `readOnly` for non-admin users. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). 
-spec get_organization_inboxes(ctx:ctx()) -> {ok, maislurp-client-erlang_page_organization_inbox_projection:maislurp-client-erlang_page_organization_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_inboxes(Ctx) ->
    get_organization_inboxes(Ctx, #{}).

-spec get_organization_inboxes(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_organization_inbox_projection:maislurp-client-erlang_page_organization_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_organization_inboxes(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/organization"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a scheduled email job
%% Get a scheduled email job details.
-spec get_scheduled_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_scheduled_job(Ctx, JobId) ->
    get_scheduled_job(Ctx, JobId, #{}).

-spec get_scheduled_job(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_scheduled_job(Ctx, JobId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/scheduled-jobs/", JobId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all scheduled email sending jobs for the inbox
%% Schedule sending of emails using scheduled jobs.
-spec get_scheduled_jobs_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_scheduled_jobs:maislurp-client-erlang_page_scheduled_jobs(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_scheduled_jobs_by_inbox_id(Ctx, InboxId) ->
    get_scheduled_jobs_by_inbox_id(Ctx, InboxId, #{}).

-spec get_scheduled_jobs_by_inbox_id(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_scheduled_jobs:maislurp-client-erlang_page_scheduled_jobs(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_scheduled_jobs_by_inbox_id(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/scheduled-jobs"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Get SMTP access usernames and passwords
-spec get_smtp_access(ctx:ctx()) -> {ok, maislurp-client-erlang_smtp_access_details:maislurp-client-erlang_smtp_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_smtp_access(Ctx) ->
    get_smtp_access(Ctx, #{}).

-spec get_smtp_access(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_smtp_access_details:maislurp-client-erlang_smtp_access_details(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_smtp_access(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/smtp-access"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox rulesets
%% List all rulesets attached to an inbox
-spec list_inbox_rulesets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_dto:maislurp-client-erlang_page_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_rulesets(Ctx, InboxId) ->
    list_inbox_rulesets(Ctx, InboxId, #{}).

-spec list_inbox_rulesets(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_ruleset_dto:maislurp-client-erlang_page_inbox_ruleset_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_rulesets(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/rulesets"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List inbox tracking pixels
%% List all tracking pixels sent from an inbox
-spec list_inbox_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_tracking_pixels(Ctx, InboxId) ->
    list_inbox_tracking_pixels(Ctx, InboxId, #{}).

-spec list_inbox_tracking_pixels(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_page_tracking_pixel_projection:maislurp-client-erlang_page_tracking_pixel_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
list_inbox_tracking_pixels(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/inboxes/", InboxId, "/tracking-pixels"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'searchFilter', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search all inboxes and return matching inboxes
%% Search inboxes and return in paginated form. The results are available on the `content` property of the returned object. This method allows for page index (zero based), page size (how many results to return), and a sort direction (based on createdAt time). You Can also filter by whether an inbox is favorited or use email address pattern. This method is the recommended way to query inboxes. The alternative `getInboxes` method returns a full list of inboxes but is limited to 100 results.
-spec search_inboxes(ctx:ctx(), maislurp-client-erlang_search_inboxes_options:maislurp-client-erlang_search_inboxes_options()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_inboxes(Ctx, MaislurpClientErlangSearchInboxesOptions) ->
    search_inboxes(Ctx, MaislurpClientErlangSearchInboxesOptions, #{}).

-spec search_inboxes(ctx:ctx(), maislurp-client-erlang_search_inboxes_options:maislurp-client-erlang_search_inboxes_options(), maps:map()) -> {ok, maislurp-client-erlang_page_inbox_projection:maislurp-client-erlang_page_inbox_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
search_inboxes(Ctx, MaislurpClientErlangSearchInboxesOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/search"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSearchInboxesOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send Email
%% Send an email from an inbox's email address.  The request body should contain the `SendEmailOptions` that include recipients, attachments, body etc. See `SendEmailOptions` for all available properties. Note the `inboxId` refers to the inbox's id not the inbox's email address. See https://www.mailslurp.com/guides/ for more information on how to send emails. This method does not return a sent email entity due to legacy reasons. To send and get a sent email as returned response use the sister method `sendEmailAndConfirm`.
-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, InboxId, MaislurpClientErlangSendEmailOptions) ->
    send_email(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email and return sent confirmation
%% Sister method for standard `sendEmail` method with the benefit of returning a `SentEmail` entity confirming the successful sending of the email with a link to the sent object created for it.
-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, InboxId, MaislurpClientErlangSendEmailOptions) ->
    send_email_and_confirm(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email_and_confirm(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_and_confirm(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/confirm"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email with queue
%% Send an email using a queue. Will place the email onto a queue that will then be processed and sent. Use this queue method to enable any failed email sending to be recovered. This will prevent lost emails when sending if your account encounters a block or payment issue.
-spec send_email_with_queue(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_with_queue(Ctx, InboxId, ValidateBeforeEnqueue, MaislurpClientErlangSendEmailOptions) ->
    send_email_with_queue(Ctx, InboxId, ValidateBeforeEnqueue, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_email_with_queue(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), boolean(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_email_with_queue(Ctx, InboxId, ValidateBeforeEnqueue, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/with-queue"],
    QS = lists:flatten([{<<"validateBeforeEnqueue">>, ValidateBeforeEnqueue}])++maislurp-client-erlang_utils:optional_params([], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email using an SMTP mail envelope and message body and return sent confirmation
%% Send email using an SMTP envelope containing RCPT TO, MAIL FROM, and a SMTP BODY.
-spec send_smtp_envelope(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_smtp_envelope_options:maislurp-client-erlang_send_smtp_envelope_options()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_smtp_envelope(Ctx, InboxId, MaislurpClientErlangSendSmtpEnvelopeOptions) ->
    send_smtp_envelope(Ctx, InboxId, MaislurpClientErlangSendSmtpEnvelopeOptions, #{}).

-spec send_smtp_envelope(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_smtp_envelope_options:maislurp-client-erlang_send_smtp_envelope_options(), maps:map()) -> {ok, maislurp-client-erlang_sent_email_dto:maislurp-client-erlang_sent_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_smtp_envelope(Ctx, InboxId, MaislurpClientErlangSendSmtpEnvelopeOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/smtp-envelope"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSendSmtpEnvelopeOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send a test email to inbox
%% Send an inbox a test email to test email receiving is working
-spec send_test_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_email(Ctx, InboxId) ->
    send_test_email(Ctx, InboxId, #{}).

-spec send_test_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_test_email(Ctx, InboxId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/send-test-email"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send email with with delay or schedule
%% Send an email using a delay. Will place the email onto a scheduler that will then be processed and sent. Use delays to schedule email sending.
-spec send_with_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_with_schedule(Ctx, InboxId, MaislurpClientErlangSendEmailOptions) ->
    send_with_schedule(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, #{}).

-spec send_with_schedule(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_send_email_options:maislurp-client-erlang_send_email_options(), maps:map()) -> {ok, maislurp-client-erlang_scheduled_job_dto:maislurp-client-erlang_scheduled_job_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
send_with_schedule(Ctx, InboxId, MaislurpClientErlangSendEmailOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/inboxes/", InboxId, "/with-schedule"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['sendAtTimestamp', 'sendAtNowPlusSeconds', 'validateBeforeEnqueue'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangSendEmailOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Set inbox favourited state
%% Set and return new favourite state for an inbox
-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions) ->
    set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions, #{}).

-spec set_inbox_favourited(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_set_inbox_favourited_options:maislurp-client-erlang_set_inbox_favourited_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
set_inbox_favourited(Ctx, InboxId, MaislurpClientErlangSetInboxFavouritedOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/inboxes/", InboxId, "/favourite"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangSetInboxFavouritedOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update IMAP access usernames and passwords
-spec update_imap_access(ctx:ctx(), maislurp-client-erlang_update_imap_access_options:maislurp-client-erlang_update_imap_access_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_imap_access(Ctx, MaislurpClientErlangUpdateImapAccessOptions) ->
    update_imap_access(Ctx, MaislurpClientErlangUpdateImapAccessOptions, #{}).

-spec update_imap_access(ctx:ctx(), maislurp-client-erlang_update_imap_access_options:maislurp-client-erlang_update_imap_access_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_imap_access(Ctx, MaislurpClientErlangUpdateImapAccessOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inboxes/imap-access"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangUpdateImapAccessOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Inbox. Change name and description. Email address is not editable.
%% Update editable fields on an inbox
-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions) ->
    update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, #{}).

-spec update_inbox(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maislurp-client-erlang_update_inbox_options:maislurp-client-erlang_update_inbox_options(), maps:map()) -> {ok, maislurp-client-erlang_inbox_dto:maislurp-client-erlang_inbox_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_inbox(Ctx, InboxId, MaislurpClientErlangUpdateInboxOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inboxes/", InboxId, ""],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangUpdateInboxOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
%% Update SMTP access usernames and passwords
-spec update_smtp_access(ctx:ctx(), maislurp-client-erlang_update_smtp_access_options:maislurp-client-erlang_update_smtp_access_options()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_smtp_access(Ctx, MaislurpClientErlangUpdateSmtpAccessOptions) ->
    update_smtp_access(Ctx, MaislurpClientErlangUpdateSmtpAccessOptions, #{}).

-spec update_smtp_access(ctx:ctx(), maislurp-client-erlang_update_smtp_access_options:maislurp-client-erlang_update_smtp_access_options(), maps:map()) -> {ok, [], maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
update_smtp_access(Ctx, MaislurpClientErlangUpdateSmtpAccessOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = patch,
    Path = ["/inboxes/smtp-access"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['inboxId'], _OptionalParams),
    Headers = [],
    Body1 = MaislurpClientErlangUpdateSmtpAccessOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


