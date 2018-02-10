# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', (e) ->
  simplemde = new SimpleMDE(
    autofocus: true
    blockStyles:
      bold: '__'
      italic: '_'
    element: document.getElementById('lecture_body')
    forceSync: true
    indentWithTabs: false
    insertTexts:
      horizontalRule: [
        ''
        '\n\n-----\n\n'
      ]
      image: [
        '![](http://'
        ')'
      ]
      link: [
        '['
        '](http://)'
      ]
      table: [
        ''
        '\n\n| Column 1 | Column 2 | Column 3 |\n| -------- | -------- | -------- |\n| Text     | Text      | Text     |\n\n'
      ]
    lineWrapping: false
    parsingConfig:
      allowAtxHeaderWithoutSpace: true
      strikethrough: false
      underscoresBreakWords: true
    placeholder: '# Intro\n
Prøv forskellige ting! F.eks **bold** eller *italic* styling, måske [links](https://google.com).\n
Du kan enten skrive Markdown syntax, bruge knapperne på toolbaren, eller bruge genveje som `cmd-b` eller `ctrl-b`.\n
\n
## Lister\n
Unummererede lister kan laves ved at bruge toolbaren eller ved at skrive `* `, `- `, eller `+ `. Nummererede lister kan startes ved at skrive `1. `.\n
\n
#### Unnummererede\n
* Lister er nemme\n
* De fortsætter automatisk når du skrive\n
* Double enter afslutter en liste\n
* Tabs og shift-tabs kan også bruges\n
\n
#### Nummererede\n
1. Nummererede lister...\n
2. ...virker også!\n
\n
## Hvad med billeder?\n
![Ja](https://i.imgur.com/sZlktY7.png)\n
\n
## Hvad med kode?\n
```css\n
p {\n
  color: black;\n
}\n
```'
    promptURLs: true
    renderingConfig:
      singleLineBreaks: false
      codeSyntaxHighlighting: true
    shortcuts: drawTable: 'Cmd-Alt-T'
    showIcons: [
      'code'
      'table'
    ]
    spellChecker: false
    status: false
    status: [
      'autosave'
      'lines'
      'words'
      'cursor'
    ]
    status: [
      'autosave'
      'lines'
      'words'
      'cursor'
      {
        className: 'keystrokes'
        defaultValue: (el) ->
          @keystrokes = 0
          el.innerHTML = '0 Keystrokes'
          return
        onUpdate: (el) ->
          el.innerHTML = ++@keystrokes + ' Keystrokes'
          return

      }
    ]
    styleSelectedText: false
    tabSize: 4)