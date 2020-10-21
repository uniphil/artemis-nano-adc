
```bash
$ git clone --recurse-submodules git@github.com:uniphil/artemis-nano-adc.git
$ # or, if on fast internet,
$ git clone --recurse-submodules -j8 git@github.com:uniphil/artemis-nano-adc.git
$
$ nix-shell
$ make
$ make bootload
```
