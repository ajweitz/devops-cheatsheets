# Vim Keyboard Shortcuts

## Shortcuts
### Navigation
* <kbd>h</kbd>,<kbd>j</kbd>,<kbd>k</kbd>,<kbd>l</kbd> - Navigation (left, down, up, right).
* <kbd>0</kbd> - Jump to the beggining of a line.
* <kbd>w</kbd> - Jump to the start of the next **W**ord.
* <kbd>e</kbd> - Jump to the **E**nd of the next word.
* <kbd>NUMBER</kbd><kbd>w</kbd> - Jump to the start of the next <**NUMBER**> **W**ord (For example <kbd>2</kbd><kbd>w</kbd> will get you 2 words ahead).
* <kbd>NUMBER</kbd><kbd>w</kbd> - Jump to the **E**nd of the next <**NUMBER**> **W**ord.
* <kbd>Esc</kbd> - Back to Navigation mode.
### Save and Exit
* <kbd>:</kbd><kbd>q</kbd><kbd>!</kbd><kbd>Enter</kbd> - **Q**uit.
* <kbd>:</kbd><kbd>w</kbd><kbd>Enter</kbd> - Save.
* <kbd>:</kbd><kbd>w</kbd><kbd>q</kbd><kbd>!</kbd><kbd>Enter</kbd> - Save and Exit.
### Inserting Text
* <kbd>i</kbd> - **I**nsert text.
* <kbd>a</kbd> - **A**ppend text.
* <kbd>u</kbd> - **U**ndo last change.
* <kbd>U</kbd> - **U**ndo changes made to the entire line.
* <kbd>r</kbd><kbd>ANY CHARACTER</kbd> - **R**eplace character pointed by curser with any character.
### Deleting Text
* <kbd>x</kbd> - Delete a character.
* <kbd>d</kbd><kbd>d</kbd> - **D**elete the whole line.
* <kbd>d</kbd><kbd>w</kbd> - **D**elete from cursor to the beggining of next **W**ord.
* <kbd>d</kbd><kbd>e</kbd> - **D**elete from cursor to **E**nd of current word.
* <kbd>d</kbd><kbd>$</kbd> - **D**elete from cursor to the end of the line.
* <kbd>d</kbd><kbd>NUMBER</kbd><kbd>w</kbd> - **D**elete from cursor to the beggining of next <**NUMBER**> **W**ord.
* <kbd>d</kbd><kbd>NUMBER</kbd><kbd>e</kbd> - **D**elete from cursor to **E**nd of <kbd>2-9</kbd> word.
* <kbd>p</kbd> - **P**aste whahever was previously deleted (see [Notes](##notes) for explanation.)


## Notes
* When you delete a character/word/line, vim stores it in memory, and you can paste it with <kbd>p</kbd>. So the delete commands serve as "cut".