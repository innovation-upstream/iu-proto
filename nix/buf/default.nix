{ lib
, buildGoModule
, fetchFromGitHub
, git
}:

buildGoModule rec {
  pname = "buf";
  version = "1.0.0-rc6";

  src = fetchFromGitHub {
    owner = "bufbuild";
    repo = pname;
    rev = "v${version}";
    sha256 = "0d5kz96qv3d6algls1jb41w0blaa0clv9dx20h42v0wjmras3rbf";
  };
  vendorSha256 = "1qnckff4lzdgixq0p4v2x1s9v95nrsqc289kxi0p27fa2nmz5vkd";

  # Skip tests because they require networking and certain deps to be in $PATH
  checkPhase = ''
    runHook preCheck
    runHook postCheck
  '';
}
