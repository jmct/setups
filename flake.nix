{
  description = "JMCT's NixOS configuration";

  # These are the dependencies of our configuration. Strictly speaking
  # a flake-based configuration will only depend on nixpkgs and home-manager
  # (if you use home-manager)
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, ... }@attrs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      lib = nixpkgs.lib;
    in {
      nixosConfigurations = {
        apply = nixpkgs.lib.nixosSystem {
          inherit system;
          modules = [ ./configuration.nix ];
          };
      };
      hmConfig = {
        apply = home-manager.lib.homeManagerConfiguration {
          inherit system pkgs;
          useGlobalPkgs = true;
          useUserPackages = true;
          username = "jmct";
          homeDirectory = "home/jmct";
          configuration = {
            imports = [ ./home.nix ];
          };
        };
    };
};
}
