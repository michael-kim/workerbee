$(function () {

    var pstyle = 'border: 1px solid #dfdfdf;';
	var myCodeMirror = CodeMirror.fromTextArea($('#codewrap > textarea')[0], {
		mode: 'text/x-mariadb',
				 indentWithTabs: true,
				 smartIndent: true,
				 lineNumbers: true,
				 matchBrackets : true,
				 autofocus: true
	});

	var codewrap = $('#codewrap')[0];

    var editorDiv = $('#editor')[0];

    $('#main_layout').w2layout({
        name: 'layout',
        panels: [
            { 
            	type: 'top', size: 38, style: pstyle
            },
            { type: 'left', size: 200, resizable: true, style: pstyle, content: 'left',
                toolbar: {
                    items: [
                        { type: 'check',  id: 'litem1', caption: 'Check', img: 'icon-page', checked: true },
                        { type: 'spacer' },
                        { type: 'menu',   id: 'litem2', caption: '', img: 'icon-folder', items: [
                            { text: 'Item 1', icon: 'icon-page' },
                            { text: 'Item 2', icon: 'icon-page' },
                            { text: 'Item 3', value: 'Item Three', icon: 'icon-page' }
                        ]}
                    ]
                }
            },
            { type: 'main', style: pstyle + 'border-top: 0px;', content: 'content', overflow:'hidden',
                toolbar: {
                    items: [
                        { type: 'check',  id: 'item1', caption: 'Check', img: 'icon-page', checked: true },
                        { type: 'break',  id: 'break0' },
                        { type: 'menu',   id: 'item2', caption: 'Drop Down', img: 'icon-folder', items: [
                            { text: 'Item 1', icon: 'icon-page' },
                            { text: 'Item 2', icon: 'icon-page' },
                            { text: 'Item 3', value: 'Item Three', icon: 'icon-page' }
                        ]},
                        { type: 'break', id: 'break1' },
                        { type: 'radio',  id: 'item3',  group: '1', caption: 'Radio 1', img: 'icon-add', hint: 'Hint for item 3', checked: true },
                        { type: 'radio',  id: 'item4',  group: '1', caption: 'Radio 2', img: 'icon-add', hint: 'Hint for item 4' },
                        { type: 'spacer' },
                        { type: 'button',  id: 'refresh',  caption: 'Refresh', img: 'icon-save', hint: 'Hint for item 5' },
                        { type: 'menu',   id: 'item6', caption: 'Drop Down', img: 'icon-folder', items: [
                            { text: 'Item 1', icon: 'icon-page' },
                            { text: 'Item 2', icon: 'icon-page' },
                            { text: 'Item 3', value: 'Item Three', icon: 'icon-page' }
                        ]}
                    ],
                    onClick: function (target, data) {
                    	if (target === 'refresh') {
                    		myCodeMirror.refresh();
                    		myCodeMirror.focus();
                    	}
                    }
                },
                tabs:{
                    name:'tabs',
                    active: 'tab1',
                    tabs: [
                        { id: 'tab1', caption: 'Tab 1'},
                        { id: 'tab2', caption: 'Tab 2' },
                        { id: 'tab3', caption: 'Table Info' },
                        { id: 'tab4', caption: 'Query'}
                    ],
                    onClick: function (target, data) {
						if (target==='tab1') {
							this.owner.content('main', w2ui['grid']);	
						} else if (target==='tab2') {
							this.owner.content('main', w2ui['grid3']);	
						} else if (target==='tab3') {
							this.owner.content('main', editorDiv);
							if (editor == null || typeof(editor) == 'undefined') {
								var editor = ace.edit("editor");
								editor.setTheme("ace/theme/monokai");
								editor.getSession().setMode("ace/mode/sql");
								editor.setValue('select * from test limit 1;');
							}
						} else if (target==='tab4') {
							this.owner.content('main', codewrap);
							//setTimeout(function() { myCodeMirror.refresh();myCodeMirror.focus(); }, 400);
						}
                        else {
							this.owner.content('main', target);
						}
                    }
                }
            },
            { type: 'bottom', size: 200, resizable: true, style: pstyle, content:'content', overflow:'hidden'}
        ]
    });

    $().w2grid({
        name: 'grid',
		show: {
				selectColumn: true,
				lineNumbers: true,
				footer: true
			},
        //style:'margin:llpx',
        header: 'List of Names',
		/*
        show: {
            toolbar: true
        },
		*/
        columns: [
            { field: 'fname', caption: 'First Name', size: '30%', resizable: true, sortable: true},
            { field: 'lname', caption: 'Last Name', size: '30%', resizable: true, sortable: true },
            { field: 'email', caption: 'Email', size: '40%', resizable: true, sortable: true },
            { field: 'sdate', caption: 'Start Date', size: '120px', resizable: true, sortable: true, hidden: true },
            { field: 'progress', caption: 'Progress', size: '30%', resizable: true, sortable: true , render:function(r) {
            	return '<div style="display:block;width:50px;hegiht:5px;border:1px solid #5e5e5e;">'
            		+'<div style="background:red;width:'+r.progress+'%;height:5px"></div></div>'
            		+'<font style="font-size:50%">'+r.progress+'%'+'</font>'; }},
        ],
        records: [
            { recid: 1, fname: 'John', lname: 'Doe', email: 'john@gmail.com', sdate: '1/3/2012' ,progress:70},
            { recid: 2, fname: 'Stuart', lname: 'Motzart', email: 'stuart@gmail.com', sdate: '4/13/2012' ,progress:60 },
            { recid: 3, fname: 'Jin', lname: 'Franson', email: 'jin@gmail.com', sdate: '3/3/2012' ,progress:60},
            { recid: 4, fname: 'Susan', lname: 'Ottie', email: 'susan@gmail.com', sdate: '5/3/2012' ,progress:60},
            { recid: 5, fname: 'Kelly', lname: 'Silver', email: 'kelly@gmail.com', sdate: '8/19/2012' ,progress:60},
            { recid: 6, fname: 'Francis', lname: 'Gatos', email: 'francis@gmail.com', sdate: '6/12/2012',progress:60 },
            { recid: 7, fname: 'Mark', lname: 'Welldo', email: 'mark@gmail.com', sdate: '8/13/2012',progress:60 },
            { recid: 8, fname: 'Thomas', lname: 'Bahh', email: 'thomas@gmail.com', sdate: '4/31/2012',progress:74 },
            { recid: 10, fname: 'John', lname: 'Doe', email: 'john@gmail.com', sdate: '1/3/2012',progress:60 },
            { recid: 12, fname: 'Stuart', lname: 'Motzart', email: 'stuart@gmail.com', sdate: '4/13/2012',progress:60 },
            { recid: 13, fname: 'Jin', lname: 'Franson', email: 'jin@gmail.com', sdate: '3/3/2012',progress:60 },
            { recid: 14, fname: 'Susan', lname: 'Ottie', email: 'susan@gmail.com', sdate: '5/3/2012' ,progress:85},
            { recid: 15, fname: 'Kelly', lname: 'Silver', email: 'kelly@gmail.com', sdate: '8/19/2012' ,progress:60},
            { recid: 16, fname: 'Francis', lname: 'Gatos', email: 'francis@gmail.com', sdate: '6/12/2012' ,progress:60},
            { recid: 17, fname: 'Mark', lname: 'Welldo', email: 'mark@gmail.com', sdate: '8/13/2012' ,progress:60},
            { recid: 18, fname: 'Thomas', lname: 'Bahh', email: 'thomas@gmail.com', sdate: '4/31/2012' ,progress:40},
            { recid: 19, fname: 'Sergei', lname: 'Rachmaninov', email: 'sergei@gmail.com', sdate: '2/23/2012' ,progress:50}
        ]
    });

    //w2ui['layout'].content('bottom', w2ui['grid']);
    w2ui['layout'].content('main', w2ui['grid']);

    w2ui['layout'].content('left', $().w2sidebar({
        name: 'sidebar',
        topHTML    : '<div style="background-color: #eee; padding: 10px 5px; border-bottom: 1px solid silver">Some HTML</div>',
        bottomHTML : '<div style="background-color: #eee; padding: 10px 5px; border-top: 1px solid silver">Some HTML</div>',
        img: null,
        nodes: [
            { id: 'database', text: 'Databases', img: 'icon-folder', expanded: true, group: true,
                nodes: [
                	{ id: 'default', text: 'default', img: 'icon-folder', count:1000, nodes: []}, //TABLE_NODES},
                    { id: 'test', text: 'test', img: 'icon-folder', count:1, nodes:[ {id:'test-001',text:'test',img:'icon-page'}]},
                    { id: 'test2', text: 'test2', img: 'icon-folder', count:1000,nodes: []}, //TABLE_NODES_2},
                    { id: 'temp', text: 'temp', img: 'icon-folder'}

                ]
            }
        ],
        onClick: function (cmd) {

            //w2ui['layout'].content('main', 'id: ' + cmd);
        }
    }));



	$().w2grid({ 
		name: 'grid2', 
		columns: [				
			{ field: 'lname', caption: 'Last Name', size: '30%' },
			{ field: 'fname', caption: 'First Name', size: '30%' },
			{ field: 'email', caption: 'Email', size: '40%' },
			{ field: 'sdate', caption: 'Start Date', size: '90px' },
		],
		records: [
			{ recid: 1, fname: 'John', lname: 'doe', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 2, fname: 'Stuart', lname: 'Motzart', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 3, fname: 'Jin', lname: 'Franson', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 4, fname: 'Susan', lname: 'Ottie', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 5, fname: 'Kelly', lname: 'Silver', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 6, fname: 'Francis', lname: 'Gatos', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 7, fname: 'Mark', lname: 'Welldo', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 8, fname: 'Thomas', lname: 'Bahh', email: 'jdoe@gmail.com', sdate: '4/3/2012' }
		],
		onExpand: function (target, eventData) {
			if (w2ui.hasOwnProperty('subgrid-' + eventData.recid)) w2ui['subgrid-' + eventData.recid].destroy();
			$('#'+ eventData.box_id).css({ padding: '3px', width: '520px', height: '200px' }).w2grid({
				name: 'subgrid-' + eventData.recid, 
				fixedBody: true,
				columns: [				
					{ field: 'lname', caption: 'Last Name', size: '30%' },
					{ field: 'fname', caption: 'First Name', size: '30%' },
					{ field: 'email', caption: 'Email', size: '40%' },
					{ field: 'sdate', caption: 'Start Date', size: '90px' },
				],
				records: [
					{ recid: 6, fname: 'Francis', lname: 'Gatos', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
					{ recid: 7, fname: 'Mark', lname: 'Welldo', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
					{ recid: 8, fname: 'Thomas', lname: 'Bahh', email: 'jdoe@gmail.com', sdate: '4/3/2012' }
				],
				onExpand: function (target, eventData) {
					$('#'+ eventData.box_id).html('You can nest subgrids').css({'padding': '3px'});
				}
			});
			w2ui['subgrid-' + eventData.recid].resize();
			return eventData;
		}
	});

    w2ui['layout'].content('bottom', w2ui['grid2']);

	$().w2toolbar({
		name: 'top-bar',
		items: [
			{ type: 'button',  id: 'item1',  caption: 'Item 1', img: 'icon-page', hint: 'Hint for item 1' },
			{ type: 'button',  id: 'item2',  caption: 'Item 2', img: 'icon-page', hint: 'Hint for item 2' },
			{ type: 'button',  id: 'item3',  caption: 'Item 3', img: 'icon-page', hint: 'Hint for item 3' },
			{ type: 'button',  id: 'item4',  caption: 'Item 4', img: 'icon-page', hint: 'Hint for item 4' },
			{ type: 'button',  id: 'item5',  caption: 'Item 5', img: 'icon-page', hint: 'Hint for item 5' }
		],
		onClick: function (target, data) {
			console.log('Target: '+ target);
			console.log(data);
		}
	});


	$().w2grid({ 
		name: 'grid3', 
		show: { 
			toolbar: true,
			footer: true,
			toolbarAdd: true,
			toolbarDelete: true,
			toolbarSave: true,
		},
		toolbar: {
			onClick: function (target, data) {
				console.log(target);
				console.log(data);
			}
		},
		searches: [				
			{ field: 'lname', caption: 'Last Name', type: 'text' },
			{ field: 'fname', caption: 'First Name', type: 'text' },
			{ field: 'email', caption: 'Email', type: 'text' },
		],
		sortData: [{ field: 'recid', direction: 'ASC' }],
		columns: [				
			{ field: 'recid', caption: 'ID', size: '50px', sortable: true, attr: 'align=center' },
			{ field: 'lname', caption: 'Last Name', size: '30%', sortable: true },
			{ field: 'fname', caption: 'First Name', size: '30%', sortable: true },
			{ field: 'email', caption: 'Email', size: '40%' },
			{ field: 'sdate', caption: 'Start Date', size: '120px' },
		],
		records: [
			{ recid: 1, fname: 'John', lname: 'doe', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 2, fname: 'Stuart', lname: 'Motzart', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 3, fname: 'Jin', lname: 'Franson', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 4, fname: 'Susan', lname: 'Ottie', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 5, fname: 'Kelly', lname: 'Silver', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 6, fname: 'Francis', lname: 'Gatos', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 7, fname: 'Mark', lname: 'Welldo', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 8, fname: 'Thomas', lname: 'Bahh', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 9, fname: 'Sergei', lname: 'Rachmaninov', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 20, fname: 'Jill', lname: 'Doe', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 21, fname: 'Frank', lname: 'Motzart', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 22, fname: 'Peter', lname: 'Franson', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 23, fname: 'Andrew', lname: 'Ottie', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 24, fname: 'Manny', lname: 'Silver', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 25, fname: 'Ben', lname: 'Gatos', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 26, fname: 'Doer', lname: 'Welldo', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 27, fname: 'Shashi', lname: 'bahh', email: 'jdoe@gmail.com', sdate: '4/3/2012' },
			{ recid: 28, fname: 'Av', lname: 'Rachmaninov', email: 'jdoe@gmail.com', sdate: '4/3/2012' }
		]
	});
	/*
	w2ui['layout'].on('resize', function(target,data) {
		if (w2ui['layout'].get('main').tabs.active==='tab4') {
			console.log('resize');
			myCodeMirror.getInputField().blur();
			data.onComplete = function() {
				setTimeout(function() { 
					myCodeMirror.refresh();
					myCodeMirror.focus();
					console.log('complete');
				}, 300);
			}
		}
	});
	*/

});

