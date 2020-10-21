the ambiq sdk is big, like, just under 1gb with a shallow checkout

```bash
$ git clone --recurse-submodules --shallow-submodules git@github.com:uniphil/artemis-nano-adc.git
$ # or, if on fast computer + fast internet,
$ git clone --recurse-submodules --shallow-submodules -j8 git@github.com:uniphil/artemis-nano-adc.git
$ # or or if you just don't care (takes a while 1.3gb disk),
$ git clone --recurse-submodules git@github.com:uniphil/artemis-nano-adc.git
$
$ nix-shell
$ make
$ make bootload
```
