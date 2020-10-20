with import <nixpkgs> {};

let
  sdk = "${toString ./AmbiqSuiteSDK}";
in
  mkShell {
    buildInputs = [
      gcc-arm-embedded-8
      python3
      python3Packages.pycrypto
      python3Packages.pyserial
    ];

    AMB_ROOT = sdk;
    SDKPATH = sdk;
    PYTHON3 = "${pkgs.python3.out}/bin/python3";
    BOARDPATH = "${sdk}/boards_sfe/redboard_artemis_nano";
    COMMONPATH = "${sdk}/boards_sfe/common";
    

    shellHook = "
      # https://learn.sparkfun.com/tutorials/using-sparkfun-edge-board-with-ambiq-apollo3-sdk/installing-the-sdk-and-board-support-files
      cp $AMB_ROOT/tools/apollo3_scripts/keys_info0.py $AMB_ROOT/tools/apollo3_scripts/keys_info.py

      export COM_PORT=$(python3 guess_serial_port.py)
    ";
  }
