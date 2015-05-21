pkgs: attrs:
    with pkgs;
    let defaultAttrs = {
        builder = "${bash}/bin/bash";
        args = [ ./builder.sh ];
        buildInputs = [ gnutar gzip gnumake gcc binutils coreutils gawk gnused gnugrep ];
        system = builtins.currentSystem;
    };
    in
    derivation (defaultAttrs // attrs)