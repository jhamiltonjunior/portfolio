import '../../css/page/show-article.css';

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
let data

async function getData() {
	const url = 'http://localhost:8080/data';

	try {
		const res = await fetch(url);

		return await res.json();
	} catch (error) {
		console.log(error);
	}
}



(async () => {
	const editor = new EditorJS({
		readOnly: true,
		/** 
		 * Id of Element that should contain the Editor 
		 */
		holder: 'editorjs',
		data: await getData(),
	
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
	
	
	
})()