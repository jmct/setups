{ runCommand, unzip }:

let
  name = "PragmataPro-${version}-ptikme.zip";
  version = "0.829";
in

  runCommand name {

    src = ./binary-files/PragmataPro0.829-ptikme.zip;

    buildInputs = [ unzip ];
    } ''
      unzip $src

      install_path=$out/share/fonts/truetype/pragmatapro
      mkdir -p $install_path

      find -name "PragmataPro*.ttf" -exec mv {} $install_path \;
    ''
