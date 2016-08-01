# This file has been generated by node2nix 1.0.0. Do not edit!

{nodeEnv, fetchurl, fetchgit}:

let
  sources = {
    "nan-2.4.0" = {
      name = "nan";
      packageName = "nan";
      version = "2.4.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/nan/-/nan-2.4.0.tgz";
        sha1 = "fb3c59d45fe4effe215f0b890f8adf6eb32d2232";
      };
    };
    "socketwatcher-0.3.0" = {
      name = "socketwatcher";
      packageName = "socketwatcher";
      version = "0.3.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/socketwatcher/-/socketwatcher-0.3.0.tgz";
        sha1 = "49e5614058fcaab19d640b374225a4eea4b4b78a";
      };
    };
  };
in
{
  "pcap-lo1tuma/node_pcap#c19d3888e60afdf1f7605491e066c5d6db3febe9" = nodeEnv.buildNodePackage {
    name = "pcap";
    packageName = "pcap";
    version = "2.0.0";
    src = fetchgit {
      url = "git://github.com/lo1tuma/node_pcap";
      rev = "c19d3888e60afdf1f7605491e066c5d6db3febe9";
      sha256 = "0m9b65jg5qkrh2bafcgv394np21mrlk6gyy8akgqzszcac1mz1zd";
    };
    dependencies = [
      sources."nan-2.4.0"
      sources."socketwatcher-0.3.0"
    ];
    meta = {
      description = "raw packet capture, decoding, and analysis";
    };
    production = true;
  };
}