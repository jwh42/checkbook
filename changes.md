## 2025-12-31
- Fixed issue where amount was unexpectedly changed to "0.00"
  - Reproduction steps
    - Create a record, close CheckBook
    - Open CheckBook, click on record that was created
    - Click empty area in "Description" text box
    - Modify description of the record (add text to end)
    - Observe: Amount is set to "0.00"
  - Observations
    - Clicking into the "amount" input box would prevent the issue
    - Moving window after opening CheckBook may-or-may-not prevent the issue

## Pre 2025-12-31
- Copied older (different?) versions of `Krypton.dll`, `Krypton.Graphics.dll`,
  `Krypton.UI.dll` into build
- Updated `CheckBookApp.kr`: removed "application" tabs
