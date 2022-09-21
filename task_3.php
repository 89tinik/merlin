<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>
        Подготовительные задания к курсу
    </title>
    <meta name="description" content="Chartist.html">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, user-scalable=no, minimal-ui">
    <link id="vendorsbundle" rel="stylesheet" media="screen, print" href="css/vendors.bundle.css">
    <link id="appbundle" rel="stylesheet" media="screen, print" href="css/app.bundle.css">
    <link id="myskin" rel="stylesheet" media="screen, print" href="css/skins/skin-master.css">
    <link rel="stylesheet" media="screen, print" href="css/statistics/chartist/chartist.css">
    <link rel="stylesheet" media="screen, print" href="css/miscellaneous/lightgallery/lightgallery.bundle.css">
    <link rel="stylesheet" media="screen, print" href="css/fa-solid.css">
    <link rel="stylesheet" media="screen, print" href="css/fa-brands.css">
    <link rel="stylesheet" media="screen, print" href="css/fa-regular.css">
</head>
<body class="mod-bg-1 mod-nav-link ">
<main id="js-page-content" role="main" class="page-content">
    <div class="col-md-6">
        <div id="panel-1" class="panel">
            <div class="panel-hdr">
                <h2>
                    Задание
                </h2>
                <div class="panel-toolbar">
                    <button class="btn btn-panel waves-effect waves-themed" data-action="panel-collapse"
                            data-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                    <button class="btn btn-panel waves-effect waves-themed" data-action="panel-fullscreen"
                            data-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
                </div>
            </div>
            <div class="panel-container show">
                <div class="panel-content">
                    <?php
                    $dataArr = [
                        [
                            'title' => 'My Tasks',
                            'value' => '130 / 500',
                            'bar' => [
                                'classColor' => 'bg-fusion-400',
                                'length' => 65
                            ]
                        ],
                        [
                            'title' => 'Transfered',
                            'value' => '440 TB',
                            'bar' => [
                                'classColor' => 'bg-success-500',
                                'length' => 34
                            ]
                        ],
                        [
                            'title' => 'Bugs Squashed',
                            'value' => '77%',
                            'bar' => [
                                'classColor' => 'bg-info-400',
                                'length' => 77
                            ]
                        ],
                        [
                            'title' => 'User Testing',
                            'value' => '7 days',
                            'bar' => [
                                'classColor' => 'bg-primary-300',
                                'length' => 65
                            ]
                        ]
                    ];
                    $i = 1;
                    foreach ($dataArr as $data):?>
                        <div class="d-flex<?= ($i == 1) ? ' mt-2' : '' ?>">
                            <?= $data['title'] ?>
                            <span class="d-inline-block ml-auto"> <?= $data['value'] ?></span>
                        </div>
                        <div class="progress progress-sm <?= ($i == count($dataArr)) ? 'mb-3' : 'mb-g' ?> ">
                            <div class="progress-bar  <?= $data['bar']['classColor'] ?>" role="progressbar"
                                 style="width:  <?= $data['bar']['length'] ?>%;"
                                 aria-valuenow=" <?= $data['bar']['length'] ?>" aria-valuemin="0"
                                 aria-valuemax="100"></div>
                        </div>
                        <?php
                        $i++;
                    endforeach;
                    ?>


                </div>
            </div>
        </div>
    </div>
</main>


<script src="js/vendors.bundle.js"></script>
<script src="js/app.bundle.js"></script>
<script>
    // default list filter
    initApp.listFilter($('#js_default_list'), $('#js_default_list_filter'));
    // custom response message
    initApp.listFilter($('#js-list-msg'), $('#js-list-msg-filter'));
</script>
</body>
</html>
