# BCDevExchange-Site
This repo Contains code and content for the *new* Jekyll-based BC Developers' Exchange Web Site.

The [BCDevExchange website](http://bcdevexchange.org/) is the public facing site for the BC Developers' Exchange - an experiment in tech innovation and collaboration.

*We are open to pull requests!  See our [contributing guide](https://github.com/BCDevExchange/BCDevExchange-site/blob/master/CONTRIBUTING.md) for the details.*

## Running Locally
 
The site can be locally with the following command once you have docker installed:

```

docker run --rm --label=jekyll --volume=$(pwd):/srv/jekyll -it -p 127.0.0.1:4000:4000 jekyll/jekyll
 
```

## Promoting latest version to production

The application can be promoted across logical environments using ImageStreamTags.  Specifically - to promote (trigger deployment) of the latest version of the app into prod, you woudl do the following in the appropriate OpenShift project :

```
oc tag bcdevexchange-site:latest bcdevexchange-site:prod
```


## License


```
     Copyright 2015 Province of British Columbia

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
```
