Simple terraform runner
===

This image is based off the default tf image, with make and default entrypoint added.

## Usage

Example running terraform in local project directory:

```bash
docker run --rm -v ${PWD}:/terraform --workdir /terraform -u $(id -u) klumhru/terraform plan
```