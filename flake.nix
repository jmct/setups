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


  # The outputs determine the final configuration
  outputs = { self, nixpkgs, home-manager, ... }@attrs:
    let
      hmConfig = {
        home-manager.useGlobalPkgs = true;
        home-manager.useUserPackages = true;
        home-manager.users.jmct.imports = [ ./home.nix ];
      };
    in {
      nixosConfigurations = {
        apply = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = attrs;
          modules = [
            ./configuration.nix
            ./fonts.nix
            home-manager.nixosModules.home-manager hmConfig
          ];
        };
      };
    };
}
