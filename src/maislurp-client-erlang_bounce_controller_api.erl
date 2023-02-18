-module(maislurp-client-erlang_bounce_controller_api).

-export([filter_bounced_recipient/2, filter_bounced_recipient/3,
         get_bounced_email/2, get_bounced_email/3,
         get_bounced_emails/1, get_bounced_emails/2,
         get_bounced_recipient/2, get_bounced_recipient/3,
         get_bounced_recipients/1, get_bounced_recipients/2,
         get_complaints/1, get_complaints/2,
         get_list_unsubscribe_recipients/1, get_list_unsubscribe_recipients/2]).

-define(BASE_URL, "").

%% @doc Filter a list of email recipients and remove those who have bounced
%% Prevent email sending errors by remove recipients who have resulted in past email bounces or complaints
-spec filter_bounced_recipient(ctx:ctx(), maislurp-client-erlang_filter_bounced_recipients_options:maislurp-client-erlang_filter_bounced_recipients_options()) -> {ok, maislurp-client-erlang_filter_bounced_recipients_result:maislurp-client-erlang_filter_bounced_recipients_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
filter_bounced_recipient(Ctx, MaislurpClientErlangFilterBouncedRecipientsOptions) ->
    filter_bounced_recipient(Ctx, MaislurpClientErlangFilterBouncedRecipientsOptions, #{}).

-spec filter_bounced_recipient(ctx:ctx(), maislurp-client-erlang_filter_bounced_recipients_options:maislurp-client-erlang_filter_bounced_recipients_options(), maps:map()) -> {ok, maislurp-client-erlang_filter_bounced_recipients_result:maislurp-client-erlang_filter_bounced_recipients_result(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
filter_bounced_recipient(Ctx, MaislurpClientErlangFilterBouncedRecipientsOptions, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/bounce/filter-recipients"],
    QS = [],
    Headers = [],
    Body1 = MaislurpClientErlangFilterBouncedRecipientsOptions,
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a bounced email.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_bounced_email_dto:maislurp-client-erlang_bounced_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_email(Ctx, Id) ->
    get_bounced_email(Ctx, Id, #{}).

-spec get_bounced_email(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_bounced_email_dto:maislurp-client-erlang_bounced_email_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_email(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/emails/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of bounced emails.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_bounced_email:maislurp-client-erlang_page_bounced_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_emails(Ctx) ->
    get_bounced_emails(Ctx, #{}).

-spec get_bounced_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_bounced_email:maislurp-client-erlang_page_bounced_email(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get a bounced email.
%% Bounced emails are email you have sent that were rejected by a recipient
-spec get_bounced_recipient(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid()) -> {ok, maislurp-client-erlang_bounced_recipient_dto:maislurp-client-erlang_bounced_recipient_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipient(Ctx, Id) ->
    get_bounced_recipient(Ctx, Id, #{}).

-spec get_bounced_recipient(ctx:ctx(), maislurp-client-erlang_u_uid:maislurp-client-erlang_u_uid(), maps:map()) -> {ok, maislurp-client-erlang_bounced_recipient_dto:maislurp-client-erlang_bounced_recipient_dto(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipient(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/recipients/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of bounced recipients.
%% Bounced recipients are email addresses that you have sent emails to that did not accept the sent email. Once a recipient is bounced you cannot send emails to that address.
-spec get_bounced_recipients(ctx:ctx()) -> {ok, maislurp-client-erlang_page_bounced_recipients:maislurp-client-erlang_page_bounced_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipients(Ctx) ->
    get_bounced_recipients(Ctx, #{}).

-spec get_bounced_recipients(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_bounced_recipients:maislurp-client-erlang_page_bounced_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_bounced_recipients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/recipients"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of complaints.
%% SMTP complaints made against your account
-spec get_complaints(ctx:ctx()) -> {ok, maislurp-client-erlang_page_complaint:maislurp-client-erlang_page_complaint(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_complaints(Ctx) ->
    get_complaints(Ctx, #{}).

-spec get_complaints(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_complaint:maislurp-client-erlang_page_complaint(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_complaints(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/complaints"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get paginated list of unsubscribed recipients.
%% Unsubscribed recipient have unsubscribed from a mailing list for a user or domain and cannot be contacted again.
-spec get_list_unsubscribe_recipients(ctx:ctx()) -> {ok, maislurp-client-erlang_page_list_unsubscribe_recipients:maislurp-client-erlang_page_list_unsubscribe_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_list_unsubscribe_recipients(Ctx) ->
    get_list_unsubscribe_recipients(Ctx, #{}).

-spec get_list_unsubscribe_recipients(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_list_unsubscribe_recipients:maislurp-client-erlang_page_list_unsubscribe_recipients(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_list_unsubscribe_recipients(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/bounce/list-unsubscribe-recipients"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'domainId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


