{
  lib,
  python3Packages,
  fetchPypi,
}:

python3Packages.buildPythonApplication rec {
  pname = "Flootty";
  version = "3.2.2";
  format = "pyproject";

  src = fetchPypi {
    inherit pname version;
    sha256 = "0gfl143ly81pmmrcml91yr0ypvwrs5q4s1sfdc0l2qkqpy233ih7";
  };

  build-system = with python3Packages; [
    setuptools
  ];

  meta = with lib; {
    description = "Collaborative terminal. In practice, it's similar to a shared screen or tmux session";
    mainProgram = "flootty";
    homepage = "https://floobits.com/help/flootty";
    license = licenses.asl20;
    maintainers = with maintainers; [ sellout ];
  };
}
