# masala_spark

This is a component of the [masala toolkit](https://github.com/PaytmLabs/masala).

This is a [wrapper cookbook](http://blog.vialstudios.com/the-environment-cookbook-pattern/#thewrappercookbook) for providing recipes for apache spark deployment.

## Supported Platforms

The platforms supported are:
- Centos 6.7+ / Centos 7.1+
- Ubuntu 14.04 LTS (And future LTS releases)
- Debioan 8.2+

## Attributes

Please see the documentation for the cookbooks included by masala_spark. (See [metadata.rb](https://github.com/PaytmLabs/masala_spark/blob/develop/metadata.rb) file)

This cookbook does not add any attributes of it's own.

## Usage

### masala_spark::default

Include `masala_spark` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[masala_spark::default]"
  ]
}
```

## License, authors, and how to contribute

See:
- [LICENSE](https://github.com/PaytmLabs/masala_spark/blob/develop/LICENSE)
- [MAINTAINERS.md](https://github.com/PaytmLabs/masala_spark/blob/develop/MAINTAINERS.md)
- [CONTRIBUTING.md](https://github.com/PaytmLabs/masala_spark/blob/develop/CONTRIBUTING.md)

