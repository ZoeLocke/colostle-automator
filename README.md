# Colostle Automator
A set of tools for automating the card-draw and table-checking of the game Colostle

## Design Document
The tool will allow users to hit buttons and get results from tables, simulating drawing playing cards and looking up the results.

### Key elements

#### A deck of cards
Initially, just a back-end process, the cards should be stored as a dictionary that has elements popped as they are drawn to simulate a depleting deck. The user should be able to hit a button to shuffle the discard back into the deck at any time. When interacting with the tables, cards will be drawn and used as look-up references against the tables.

#### Draw Buttons
A series of buttons that take users to screens where cards are drawn from the deck and referenced against the relevant lookup tables, the results being shown to the user. Initially, this will be as simple as "hit button, get result from table", but can be made more graphical later.

### Notes
 - Due to the simple text-based nature of the MVP, drawing cards to create a city will not be possible, and this feature will need to be added when a graphical interface is created.
 - Draw results should not be replaced by new results, as players will need to be able to reference earlier results.
 - It may be helpful to write all actions and results to a file that can be called on later.
 - Some buttons may require additional information, such as a player's exploration or combat score.
