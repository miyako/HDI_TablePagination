# HDI_TablePagination

![4D](https://img.shields.io/badge/4D-17%20R2%2B-blue) ![Project](https://img.shields.io/badge/format-project%20(.4DProject)-lightgrey) ![Write Pro](https://img.shields.io/badge/requires-4D%20Write%20Pro-orange)

A 4D **HDI** ("How Do I") example that shows how to paginate tables in **4D Write Pro**: inserting a large table, flowing it across pages and columns, and controlling page, column and paragraph breaks.

## Features

| Page | What it demonstrates |
|------|----------------------|
| **1** | Description of the technique, read from the `INFO` table. |
| **2** | Inserts a 200-row table into a Write Pro area; page orientation and column count are changed with the `pageOrientation` and `columnCount` standard actions. |
| **3** | Inserts column, page and paragraph breaks at the current selection. |

Tab titles and descriptions are stored in the `INFO` table; the `Employees` table provides sample records.

## Points of interest

- **Table generation** -- `WP Insert table` + `WP Table append row` build a table from random data; `WP Table get columns` and `WP SET ATTRIBUTES` (`wk width`) set column widths.
- **Breaks** -- `WP Insert break` with `wk column break`, `wk page break` and `wk paragraph break`, appended at `WP Selection range`.
- **Standard actions on form objects** -- page orientation and column count dropdowns need no method code.
- **Splash dialog pattern** -- shared across HDI repos: `00_Start` runs through `CALL WORKER`, opens a non-blocking `DIALOG(...; *)`, reuses the window if already open, passes state through `Form`, and checks the minimum 4D version and Write Pro license before continuing.
- **Sample data** -- `Resources/*.4ie` / `*.4si` are imported automatically on first start when the tables are empty.
- **Dark mode and Liquid Glass** -- `"automatic"` colours, `prefers-color-scheme` rules in `styleSheets.css`, and `form-theme` button heights in the platform stylesheets (27 px Liquid Glass, 23 px classic).
- **Localisation** -- all UI text uses XLIFF (`:xliff:` in JSON, `Localized string` in code); English and Japanese are provided.

## Requirements

- 4D 17 R2 or later (the project is saved in 4D 21 format)
- A valid **4D Write Pro** license

## Getting started

1. Open `Project/HDI_TablePagination.4DProject` with 4D.
2. Run the application, or choose **File > Demo** if the splash window was closed.
3. Click **Demo**, then explore the tabs.

## Project structure

```
Project/Sources/
  Methods/00_Start.4dm        splash / startup entry point
  Forms/HDI                   splash dialog
  Forms/HDI2                  main demo form (tabs + Write Pro areas)
  TableForms/                 input/output forms for [INFO] and [Employees]
  menus.json                  menu bar (standard actions)
  styleSheets*.css            dark mode, Liquid Glass, platform fonts
Resources/
  en.lproj, ja.lproj          XLIFF files (menu, messages, forms)
  *.4ie, *.4si                sample data
```

## References

- Blog post: [Table pagination in 4D Write Pro](https://blog.4d.com/table-pagination-in-4d-write-pro/)
- Original download: [HDI_TablePagination.zip](https://download.4d.com/Demos/4D_v17_R2/HDI_TablePagination.zip)
- [4D Write Pro documentation](https://developer.4d.com/docs/WritePro/overview)
- [CSS in 4D forms](https://developer.4d.com/docs/FormEditor/stylesheets)

## Origin

Originally a binary `.4DB` example database distributed with 4D v17 R2, converted to a project with 4D 21 and modernised with GitHub Copilot.
