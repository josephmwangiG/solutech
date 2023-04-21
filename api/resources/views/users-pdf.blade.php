<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Users Report</title>
    <style>
        /* form css end */
        /* table css start */
        .table {
            margin-bottom: 0;
            width: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }

        .table>:not(:first-child) {
            border-top: none;
        }

        .table th {
            font-size: 0.75rem;
            text-align: center;
            padding: 15px 25px;
            white-space: nowrap;
        }

        .table td {
            font-size: 0.8125rem;
            color: #5b6e88;
            text-align: center;
            font-weight: 500;
            padding: 15px 25px;
            vertical-align: middle;
            white-space: nowrap;
        }

        .white-space-wrap {
            white-space: initial !important;
        }

        .table td,
            {
            border-top: 1px solid #e8e8e8;
        }

        .table tbody tr:last-child td {
            border-bottom: none;
        }

        .table td span,
        .table td p,
        .table td li {
            font-size: 0.875rem;
        }

        table th:last-child {
            text-align: right;
        }

        table th:first-child {
            text-align: left;
            font-weight: 600;
        }

        table td:last-child {
            text-align: right;
        }

        table td:first-child {
            text-align: left;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(115, 115, 115, 0.05);
        }

        table .user {
            display: flex;
            align-items: center;
            flex-wrap: wrap;
        }

        table .user .thumb {
            width: 40px;
            height: 40px;
        }




        table.dataTable {
            margin-top: 20px !important;
            margin-bottom: 20px !important;
        }


        table.dataTable tbody tr td {
            white-space: nowrap;
        }

        table.dataTable thead tr {
            background-color: #4634ff;
        }

        table.dataTable thead tr th {
            border: none;
            color: #ffffff;
        }


        table.table--light thead th {
            border: none;
            color: #ffffff;
            background-color: #4634ff;
        }

        table.table--light.style--two thead th {
            border-top: none;
            padding-left: 25px;
            padding-right: 25px;
        }

        table.table--light.style--two tbody td {
            padding: 15px 25px;
        }
    </style>

</head>

<body>

    <header>
        <table style="width:100%">
            <tr>
                <td style="width: 10%">
                    <img height="50px" src="{{ public_path() . '/logo.png' }}" alt="">
                </td>
                <td>
                    <table>
                        <tr>
                            <td>
                                <strong>SOLUTECH</strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <strong>Users Report</strong>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                {{ date('M d Y') }}
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </header>
    <hr>
    <main>
        <table class="table--light style--two table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Tasks</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $key => $user)
                    <tr>
                        <td>{{ $key + 1 }}</td>
                        <td>{{ $user->name }}</td>
                        <td>{{ $user->email }}</td>
                        <td>{{ $user->tasks->count() }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </main>
</body>

</html>
