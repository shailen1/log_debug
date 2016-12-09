{application, log_debug,
 [
  {description, "Generic log_debug app ."},
  {vsn, "0.0.1"},
  {modules, ['log_debug_app','log_debug_sup']},
  {registered, [log_debug_sup]},
  {applications, [
        kernel,
        stdlib,
        sasl,
        crypto,
        public_key,
        ssl,
        inets,
        lager,
        recon,
        eper,
        jsx,
        jiffy,
        base64url
                 ]},
  {mod, { log_debug_app, []}},
  {env, []}
 ]}.

