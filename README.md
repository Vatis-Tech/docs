# Vatis Tech documentation

## Development

Install the [Mintlify CLI](https://www.npmjs.com/package/mintlify) to preview the documentation changes locally. To install, use the following command

```
npm i -g mintlify
```

Run the following command at the root of your documentation (where mint.json is)

```
mintlify dev
```

### Update the OpenAPI

1. Run the update script
    ```shell
    ./update_openapi.bash
    ```
2. Generate MDX files for each endpoint
    ```shell
    npx @mintlify/scraping@latest openapi-file <path-to-openapi-file> -o <output-directory>
    ```

### Create gists
- prefix the file you want to share with `em` (e.g. `https://emgithub.com/org/repo/blob/main/file.md`)
- tick all the checkboxes
- use the `A 11 Y Dark` theme
- copy the `iframe`
- remove the `style` attribute from the `iframe` tag
- add the `width="100%"` and `height="<height from the style tag - 20>px"` attributes to the `iframe` tag
- paste the `iframe` tag in the `mdx` file

Tips&tricks:
- prefix the URL with `#L2-10` to highlight a specific range of lines


## Publishing Changes

Install our Github App to autopropagate changes from youre repo to your deployment. Changes will be deployed to production automatically after pushing to the default branch. Find the link to install on your dashboard. 

### Troubleshooting

- Mintlify dev isn't running - Run `mintlify install` it'll re-install dependencies.
- Page loads as a 404 - Make sure you are running in a folder with `mint.json`
