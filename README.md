# Dbt docs Github pages example

Simple stupid stripped-down example of how to deploy dbt docs to Github pages.

The only manual configuration required is to set the Github Pages to run off the root directiory of the `gh-pages` branch. You can configure this in your Github repo's **Settings > Pages**.

**Deployed docs here:** https://dwreeves.github.io/dbt_docs_ghpages_example/

### Explanation

First, the dbt docs are generated: `dbt docs generate`. Then we move the necessary files (`index.html`, `catalog.json`, `manifest.json`) into its own folder (`docs/`).

Next, we use a Python package called `ghp-import`. This tool is what `mkdocs gh-deploy` uses under the hood. This tool uploads a directory (in this case, the directory with our docs, i.e. `docs/`) to Github pages via `git push origin gh-pages`.

`gh-pages` reads whatever branch you have set up as a simple static website, and that's exactly what `dbt docs generate` provides. So at this point everything is ready.

And that's it!

### Warning

Please be aware that private must be using **GitHub Enterprise Cloud** to hide your docs from public view.

If you do not have this enabled, I suggest looking into alternate ways to deploy your dbt docs.

**Note:** I am also the creator of Cosmos's [docs hosting functionality](https://astronomer.github.io/astronomer-cosmos/configuration/hosting-docs.html). So if your organization uses Apache Airflow, you can host dbt docs securely this way too. Use of Cosmos's dbt docs feature does not require use of Cosmos in your Airflow DAGs.

### About

This repo was originally created as a suggestion for [this](https://github.com/C00ldudeNoonan/simple-dbt-runner) code base, as the original dbt docs deployment design was both less secure and also assumed a lot of AWS permissions that many data teams would not realistically have (ability to manage resources through CloudFormation). They have now adapted this pattern into their code. Hooray!
