
$(function () {
    $().w2grid({
        name: 'tabl-info-grid',
		show: {
				lineNumbers: true,
			},
        header: 'List of Names',
        columns: [
            { field: 'name', caption: 'Name', size: '30%', resizable: true, sortable: true},
            { field: 'type', caption: 'Type ', size: '30%', resizable: true, sortable: true },
            { field: 'comment', caption: 'Comment', size: '40%', resizable: true, sortable: true }
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
})

