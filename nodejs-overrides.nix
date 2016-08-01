{ pkgs ? import <nixpkgs> }:

let
  nodePackages = import ./default.nix { inherit pkgs; };
in
  nodePackages // {
    pcap = nodePackages.pcap.override (oldAttrs: {
      buildInputs = oldAttrs.buildInputs ++ [ pkgs.libpcap ];
    });

  }
