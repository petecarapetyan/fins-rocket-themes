# Status:

This project is soon to be abandoned and good parts migrated to webappwriter

## Notes Jan 29

- works except without drawer woops:
  - axios:
    - media query works
  - five38:
    - but attempt was made to drop in drawer after
    - media query fails on overflow sometimes
    - seems majorly incomplete
    - drawer not visible some views
  - fuelcell:
    - media query shrinks and then fails on area before main appearing
    - this appeared only recently - worked earlier this week????
  - reddit:
    - same as fuel cell - area before main appearing
- shifted to drawer but not media query:
  - five38:
    - inbetween see above
  - next:
    - no media queries implemented on grid-area side
    - rocket drawer only works in `with-sidebar`
  - npr:
    - attempted implementation of media query on grid area
    - grid area overflow not fixed
    - drawer sorta works but doesn't have background covering page
  - slashdot:
    - drawer works perfectly because no layout.css changes
    - media drawer works perfectly because no layout.css changes
    - grid-area-layout works perfectly but not fully responsive
    - sidebar not visible because no layout.css changes
    - sidebar doesn't go away because:
      - no layout.css changes and
      - not in grid-area-layout.css
  - virgin:
    - like five38 in that brought in revised layout.css and that breaks:
      - drawer overlay
    - no @media in the grid-area-layout.css
  - wired:
    - similar to five-38 and virgin in basic problems & status