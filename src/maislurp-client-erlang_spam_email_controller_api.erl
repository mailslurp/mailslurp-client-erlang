-module(maislurp-client-erlang_spam_email_controller_api).

-export([get_all_spam_emails/1, get_all_spam_emails/2]).

-define(BASE_URL, "").

%% @doc Get blocked inbound spam email records in paginated format
%% 
-spec get_all_spam_emails(ctx:ctx()) -> {ok, maislurp-client-erlang_page_spam_email_projection:maislurp-client-erlang_page_spam_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_spam_emails(Ctx) ->
    get_all_spam_emails(Ctx, #{}).

-spec get_all_spam_emails(ctx:ctx(), maps:map()) -> {ok, maislurp-client-erlang_page_spam_email_projection:maislurp-client-erlang_page_spam_email_projection(), maislurp-client-erlang_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), maislurp-client-erlang_utils:response_info()}.
get_all_spam_emails(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/spam-emails"],
    QS = lists:flatten([])++maislurp-client-erlang_utils:optional_params(['page', 'size', 'sort', 'since', 'before', 'inboxId'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = maislurp-client-erlang_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    maislurp-client-erlang_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


