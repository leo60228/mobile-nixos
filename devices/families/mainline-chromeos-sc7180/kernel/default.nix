{ mobile-nixos
, fetchFromGitHub
, fetchpatch
, linux_6_6
, ...
}:

mobile-nixos.kernel-builder {
  version = linux_6_6.version;
  configfile = ./config.aarch64;

  src = linux_6_6.src;

  patches = [
    # HACK: clk: Delay disabling unused clocks by 10s
    (fetchpatch {
      url = "https://gitlab.postmarketos.org/postmarketOS/pmaports/-/raw/972d39afe9077b06cd26475b4cce5dd7cdab00b2/device/community/linux-postmarketos-qcom-sc7180/0011-HACK-clk-Delay-disabling-unused-clocks-by-10s.patch";
      hash = "sha256-hOo0T9UmpwJxSxvkaIujEPTd8dlj1KRd7jMY8ZC8ito=";
    })
  ];

  isModular = true;
  isCompressed = false;
}
