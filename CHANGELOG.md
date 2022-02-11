# dbt_pendo_source v0.2.1

## Under the Hood
- The `valid_through` field within both the `stg_pendo__feature_history` and `stg_pendo__page_history` models have been updated to leverage the `dbt_utils.timestamp()` macro to be cast as timestamps. ([#10](https://github.com/fivetran/dbt_pendo_source/pull/10))

## Contributors
- [everettt](https://github.com/everettttt?tab=overview&from=2022-02-01&to=2022-02-11) ([#10](https://github.com/fivetran/dbt_pendo_source/pull/10))

# dbt_pendo_source v0.2.0
🎉 dbt v1.0.0 Compatibility 🎉
## 🚨 Breaking Changes 🚨
- Adjusts the `require-dbt-version` to now be within the range [">=1.0.0", "<2.0.0"]. Additionally, the package has been updated for dbt v1.0.0 compatibility. If you are using a dbt version <1.0.0, you will need to upgrade in order to leverage the latest version of the package.
  - For help upgrading your package, I recommend reviewing this GitHub repo's Release Notes on what changes have been implemented since your last upgrade.
  - For help upgrading your dbt project to dbt v1.0.0, I recommend reviewing dbt-labs [upgrading to 1.0.0 docs](https://docs.getdbt.com/docs/guides/migration-guide/upgrading-to-1-0-0) for more details on what changes must be made.
- Upgrades the package dependency to refer to the latest `dbt_fivetran_utils`. The latest `dbt_fivetran_utils` package also has a dependency on `dbt_utils` [">=0.8.0", "<0.9.0"].
  - Please note, if you are installing a version of `dbt_utils` in your `packages.yml` that is not in the range above then you will encounter a package dependency error.

# dbt_pendo_source v0.1.1

## 🚨 Breaking Changes
- n/a

## Bug Fixes
- **For Snowflake warehouses:** Addressed issue [#6](https://github.com/fivetran/dbt_pendo/issues/6), in which users were seeing reserved keyword-related errors when the package selected from the source `GROUP` table. The package now incorporates appropriate quoting and casing for this table in Snowflake destinations. Thanks to both @leinemann and @payzer-mike for contributing! 

## Features
- Added this changelog to capture iterations of the package!

## Under the Hood
- n/a
