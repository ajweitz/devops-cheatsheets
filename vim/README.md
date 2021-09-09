# Vim Keyboard Shortcuts

## Shortcuts
### Navigation
* <kbd>h</kbd>,<kbd>j</kbd>,<kbd>k</kbd>,<kbd>l</kbd> - Navigation (left, down, up, right).
* <kbd>0</kbd> - Go to the beggining of a line.
* <kbd>w</kbd> - Go to the start of the next **W**ord.
* <kbd>e</kbd> - Go to the **E**nd of the next word.
* <kbd>NUMBER</kbd><kbd>w</kbd> - Go to the start of the next <**NUMBER**> **W**ord (For example <kbd>2</kbd><kbd>w</kbd> will get you 2 words ahead).
* <kbd>NUMBER</kbd><kbd>e</kbd> - Go to the **E**nd of the next <**NUMBER**> **W**ord.
* <kbd>Esc</kbd> - Back to Navigation mode.
* <kbd>Ctrl</kbd>+<kbd>G</kbd> - Show line number and position in the file.
* <kbd>G</kbd> - Go to the end of the file.
* <kbd>g</kbd><kbd>g</kbd> - Go to the start of the file.
* <kbd>Ctrl</kbd>+<kbd>O</kbd> - Go back to the previous position
* <kbd>NUMBER</kbd><kbd>G</kbd> - Go to a specific line in the file.
* <kbd>%</kbd> - Find the matching parentheses for `(`,`[`,`{`.
### Search
* <kbd>/</kbd> - Will prompt for text search. You can enter some text and hit <kbd>Enter</kbd>.
* <kbd>n</kbd> - Show **N**ext occurence of the search phrase.
* <kbd>N</kbd> - Show previous occurence of the search phrase.
* <kbd>?</kbd> - Prompt for a backwards search.
### Save and Exit
* <kbd>:</kbd><kbd>q</kbd><kbd>!</kbd><kbd>Enter</kbd> - **Q**uit.
* <kbd>:</kbd><kbd>w</kbd><kbd>Enter</kbd> - Save.
* <kbd>:</kbd><kbd>w</kbd>` somefile.txt`+<kbd>Enter</kbd> - Save file as `somefile.txt` (**Note:** there is whitespace after the <kbd>w</kbd>).
* <kbd>:</kbd><kbd>w</kbd><kbd>q</kbd><kbd>!</kbd><kbd>Enter</kbd> - Save and Exit.
### Inserting Text
* <kbd>i</kbd> - **I**nsert text.
* <kbd>a</kbd> - **A**ppend text.
* <kbd>A</kbd> - **A**ppend at the end of line.
* <kbd>o</kbd> - **O**pen new line (create new line) and go into Insert mode.
* <kbd>R</kbd> - Enter **R**eplace mode.
* <kbd>c</kbd><kbd>e</kbd> - Delete text until the end of word and place you in Insert mode (similar to <kbd>d</kbd><kbd>e</kbd>, with addition of placing you in Insert mode).
* <kbd>c</kbd><kbd>w</kbd> - Delete text until the beggining of next word and place you in Insert mode.
* <kbd>c</kbd><kbd>3</kbd> - Delete text until the end of line and place you in Insert mode.
### Deleting Text
* <kbd>x</kbd> - Delete a character.
* <kbd>d</kbd><kbd>d</kbd> - **D**elete the whole line.
* <kbd>d</kbd><kbd>w</kbd> - **D**elete from cursor to the beggining of next **W**ord.
* <kbd>d</kbd><kbd>e</kbd> - **D**elete from cursor to **E**nd of current word.
* <kbd>d</kbd><kbd>$</kbd> - **D**elete from cursor to the end of the line.
* <kbd>d</kbd><kbd>NUMBER</kbd><kbd>w</kbd> - **D**elete from cursor to the beggining of next <**NUMBER**> **W**ord.
* <kbd>d</kbd><kbd>NUMBER</kbd><kbd>e</kbd> - **D**elete from cursor to **E**nd of <kbd>2-9</kbd> word.
### Undo
* <kbd>u</kbd> - **U**ndo last change.
* <kbd>U</kbd> - **U**ndo changes made to the entire line.

### Replacing Text
* <kbd>r</kbd><kbd>ANY CHARACTER</kbd> - **R**eplace character pointed by curser with any character.
* <kbd>:</kbd>
    * `s/old/new` - replace the first occurence of `old` string with `new` in the current line.
    * `s/old/new/g` - replace all `old` string with `new` in the current line.
    * `%s/old/new/g` - replace all `old` string with `new` in the entire file.
    * `%s/old/new/gc` - replace all `old` string with `new` in the entire file, but prompt for every occurence.
### Copy and Pasting
When you delete a character/word/line, vim stores it in memory, and you can paste it with <kbd>p</kbd>. So the delete commands serve as "cut".
* <kbd>p</kbd> - **P**aste whahever was previously deleted or yanked.
* <kbd>y</kbd> - **Y**ank (Copy) highlighted text. To enter highlighting aka **v**isual mode, press <kbd>v</kbd>.
* <kbd>y</kbd><kbd>w</kbd> - **Y**ank a **W**ord.
* <kbd>y</kbd><kbd>y</kbd> - **Y**ank an entire line.
### Executing External Commands
* <kbd>:</kbd>
    * `!somecommand`+<kbd>Enter</kbd> - Will execute a command, in this case `somecommand`.