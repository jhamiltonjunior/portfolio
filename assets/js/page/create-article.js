import '../../css/page/create-article.css';

import EditorJS from '@editorjs/editorjs'; 
import Header from '@editorjs/header'; 
import List from '@editorjs/list';
import SimpleImage from '@editorjs/simple-image'
import Table from '@editorjs/table'
import Delimiter from '@editorjs/delimiter'
import InlineCode from '@editorjs/inline-code'
import Marker from '@editorjs/marker'
import Warning from '@editorjs/warning'
import Quote from '@editorjs/quote'
import Checklist from '@editorjs/checklist'
import Embed from '@editorjs/embed'
import LinkTool from '@editorjs/link'

const editor = new EditorJS({ 
  /** 
   * Id of Element that should contain the Editor 
   */ 
  holder: 'editorjs',

  /** 
   * Available Tools list. 
   * Pass Tool's class or Settings object for each Tool you want to use 
   */ 
   tools: {
    header: {
      class: Header,
      inlineToolbar: ['link'],
    },
    list: {
      class: List,
      inlineToolbar: [
        'link',
        'bold'
      ]
    },
    image: SimpleImage,
    checklist: {
        class: Checklist,
        inlineToolbar: ['link']
      },
    quote: Quote,
    warning: Warning,
    marker: Marker,
    delimiter: Delimiter,
    inlineCode: InlineCode,
    linkTool: LinkTool,
    embed: Embed,
    table: Table
  },
})

const id = document.querySelector('#editorjs')

editor.isReady.then(() => {
    console.log(id.firstChild.outerHTML)
})