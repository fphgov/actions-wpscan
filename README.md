# WPSCAN GITHUB ACTION OPERATOR

## Example pipeline
```yaml
on:
  push:
    branches:
      - master
jobs:
  wpscan:
    runs-on: ["self-hosted"]
    steps:
      - uses: actions/checkout@master

      - name: 'WPScan'
        uses: 'fphgov/actions-wpscan@master'
        with:
          wp_url: 'https://www.example.com'
          wpscan_api_token: ${{ secrets.WPSCAN_API_TOKEN }}
```

## Required Arguments

| variable                 | description                | required | default                     |
|--------------------------|----------------------------|----------|-----------------------------|
| wp_url                   | Wordpress site url         | true     |                             |

## Optional Arguments

| variable                           | description                        | required | default |
|------------------------------------|------------------------------------|----------|---------|
| wpscan_enumerate                   | WPScan enumerate                   | false    |         |
| wpscan_stealthy                    | WPScan is stealthy                 | false    | false   |
| wpscan_plugins_detection           | WPScan plugins detection           | false    | false   |
| wpscan_api_token                   | WPScan api token                   | false    |         |

## License

MIT License

Copyright (c) 2022 Municipality of Budapest

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNE