# Custom KeyMap Ideas

## Motivation

I don't like the leader -> key sequence pattern. Why not remove the leader and have the commands readily available to me from the base layer.

## Ideas

- Semantically grouped functionality
    - Navigation
        - InsertMode
            - EOL, BeginningOfLine, Until, To
            - Complete suggestion, cycle suggestion, ignore suggestion
            - Scroll document window
            - Capitalization, formatting, indentation, incr, decr
        - Command Mode
            - Visual, Visual Block, Insert Mode transition
            - Insert EOL, EO{TextObject}
            - MoveToNext{TextObject}, MoveToPrev{TextObject}
    - Buffers
        - BufferOpen, BufferClose, BufferHide
        - BufferNext, BufferPrevious, BufferGoTo
        - BufferMoveNext, BufferMovePrev
        - BufferSearch
    - Tab
        - TabOpen, TabClose, TabHide
        - TabNext, TabPrevious, TabGoTo
        - TabMoveNext, TabMovePrev, TabMoveTo
        - TabSearch
    - Window
        - WindowClose, VerticalSplit, HorizontalSplit, CloseAllBut
        - WindowNext, WindowPrevious, WindowGoTo
        - WindowMoveNext, WindowMovePrev, WindowMoveTo
        - WindowSearch
        - MoveToTab {num}
        - MoveToNewTab 
        - MaxH, MaxW, IncrH, IncrW
    - VCS (Git atm)
        - gitSigns
        - gitFugitive
    - Terminal? -> prefer separate process
    - TreeSitter TextObject motions
    - Telescope / search
