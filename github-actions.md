[Fireship Github actions guide](https://fireship.io/lessons/five-useful-github-actions-examples/)

[Fireship Github actions class](https://fireship.io/courses/git/advanced-actions/)

Github Actions are automated workflows which run every time an event on Github happens. Event are liket when a repo is started, or a push or a pull request is made.

## Continuous Integration (CI)

Are automated test and build processes which run every time a push is made to a repo.
To create a CI go to .github/workflows/integrate.yml For Example the following code is for a node integration:

```yaml
name: Node Continuous Integration

on:                             # indicates the event that triggers the workflow and where it is triggered
    pull_request:               # event that triggers the workflow
        branches: [ master ]    # where the workflow is triggered

jobs:                           # Every workflow has at least one job. Jobs are the actions that are run.
    test_pull_request:          # name of the job
        run-on: ubuntu-latest               # indicates the environment that the job is run on
        steps:                              # steps are the instructions to what is going to happen
            -   uses: actions/checkout@v2     # uses setup the environment for the job, checkout bring the code from the commit to the main so the code can be tested.
            -   uses: actions/setup-node@v1   # setup the node environment for the job
                with:
                    node-version: 12.x          # indicates the version of node that will be used
            - run: npm ci                   # indicates the command that will be run, npm ci is the clean install of the dependencies needed for the project
            - run: npm test                 # indicates the command that will be run
            - run: npm run build            # indicates the command that will be run
```

## Continuous Delivery (CD)
CI is about merge code in. CD is about release code out, is about deplying into production.

For example an integration with Firebase, is possible to add a token from Firebase into the secrets in Github to authentidate github with Firebase.
To create a CD go to .github/workflows/deploy.yml For Example the following code is for a Firebase delivery:

```yaml
name: Firebase Continuous Deployment

on:
    push:
        branches: [ master ]

jobs:
    deploy:
        run-on: ubuntu-latest
        steps:
            -   uses: actions/checkout@master
            -   uses: actions/setup-node@master
                with:
                    node-version: 12.x
            -   run: npm ci
            -   run: npm run build
            -   uses: w9jds/firebase-action@master    # third party action to handle the Firebase CLI setup
                with:
                    args: deploy --only hosting
                env:
                    FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}   # FIREBASE_TOKEN is supposed ti be the name given to the secret in Github
```

## Publishing NPM Packages

CI/CD are the most common used in development, but it's possible to publish npm packages with actions too.

```yaml
name: <package_name>

on:
    release:
        type: [created]

jobs:
    build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v1
        with:
          node-version: 12
      - run: npm ci
      - run: npm test

  publish-npm:
    needs: build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v1
        with:
          node-version: 12
          registry-url: https://registry.npmjs.org/
      - run: npm ci
      - run: npm build
      - run: npm publish
        env:
          NODE_AUTH_TOKEN: ${{secrets.npm_token}}


    publish-gpr:
        needs: build
        runs-on: ubuntu-latest
        steps:
        - uses: actions/checkout@v2
        - uses: actions/setup-node@v1
            with:
            node-version: 12
            registry-url: https://npm.pkg.github.com/
            scope: '@your-github-username'
        - run: npm ci
        - run: npm publish
            env:
            NODE_AUTH_TOKEN: ${{secrets.GITHUB_TOKEN}}

## Integrate apps

While Actios are reusable chunck of code for make our own workflows. Apps are fully-managed integrations made available by the companies to integrate github with their tools. Although is still possible to create a workflow to do the integration, Apps are made available in github marketplace and can be setup with a few clicks.

[Codacy is an app to automatically check code quality](https://github.com/marketplace/codacy)

## Schedule background jobs

To run actions periodically, with a schedule, like creating a backup. You can do this with cron events. For example:

```yaml
name: <workflow_name>

on:
    schedule:
        cron: "0 0 * * *"   # every day at midnight, you can easily generate cron here: https://crontab.guru/

jobs:
    backup:
        run-on: ubuntu-latest
        steps:
            -   uses: GoogleCloudPlataform/github-actions/setup-gcloud@master
                with:
                    service_account_key: ${{ secrets.GOOGLE_SERVICE_ACCOUNT_KEY }}
                    export_default_credentials: true
            - run: gcloud config set project $PROJECT_ID
            - run: gcloud firestore export $BUCKET
```