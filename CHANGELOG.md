# dbt_pendo_source v0.1.1

## 🚨 Breaking Changes
- n/a

## Bug Fixes
- **For Snowflake warehouses:** Addressed issue [#6](https://github.com/fivetran/dbt_pendo/issues/6), in which users were seeing reserved keyword-related errors when the package selected from the source `GROUP` table. The package now incorporates appropriate quoting and casing for this table in Snowflake destinations. Thanks to both @leinemann and @payzer-mike for contributing! 

## Features
- Added this changelog to capture iterations of the package!

## Under the Hood
- n/a