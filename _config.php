<?php

use SilverStripe\Forms\HTMLEditor\HtmlEditorConfig;

$style_formats = [
    [
        'title' => 'Color',
        'items' => [
            [ 'title' => 'Primary', 'inline' => 'span', 'classes' => 'text-primary' ],
            [ 'title' => 'Info', 'inline' => 'span', 'classes' => 'text-info' ],
            [ 'title' => 'Green', 'inline' => 'span', 'classes' => 'text-success' ],
            [ 'title' => 'Red', 'inline' => 'span', 'classes' => 'text-danger' ],
            [ 'title' => 'Yellow', 'inline' => 'span', 'classes' => 'text-warning' ],
        ]
    ],
    [
        'title' => 'Button',
        'items' => [
            [ 'title' => 'Primary button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-primary'] ],
            [ 'title' => 'Info button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-info'] ],
            [ 'title' => 'Light Button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-light'] ],
            [ 'title' => 'Dark Button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-dark'] ],
            [ 'title' => 'Green Button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-success'] ],
            [ 'title' => 'Red button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-danger'] ],
            [ 'title' => 'Yellow button', 'selector' => 'a', 'attributes' => ['class' => 'btn btn-warning'] ],
        ]
    ],
    [
        'title' => 'Listenpunkt',
        'items' => [
            [ 'title' => 'Check Primary', 'selector' => 'li', 'classes' => 'li-check-primary' ],
            [ 'title' => 'Check Green', 'selector' => 'li', 'classes' => 'li-check-success' ],
            [ 'title' => 'Check Yellow', 'selector' => 'li', 'classes' => 'li-check-warning' ],
            [ 'title' => 'Check Red', 'selector' => 'li', 'classes' => 'li-check-danger' ],
        ],
    ],
];

$formats = HtmlEditorConfig::get('cms')->getOption('formats');
$formats['alignleft'] = [
    [ 'selector' => 'p,h1,h2,h3,h4,h5,h6,td,th,li', 'classes' =>'text-start' ],
    [ 'selector' => 'div,ul,ol,table,img,figure', 'classes' =>'text-start']
];
$formats['alignright'] = [
    [ 'selector' => 'p,h1,h2,h3,h4,h5,h6,td,th,li', 'classes' =>'text-end' ],
    [ 'selector' => 'div,ul,ol,table,img,figure', 'classes' =>'text-end' ]
];
HtmlEditorConfig::get('cms')->setOption('formats', $formats);


HtmlEditorConfig::get('cms')->insertButtonsAfter('formatselect', 'styleselect');
HtmlEditorConfig::get('cms')
    ->setOption('importcss_append', true)
    ->setOption('style_formats_autohide', true)
    ->setOption('importcss_file_filter', 'dom.css')
    ->setOption('style_formats', $style_formats);
HtmlEditorConfig::get('cms')->enablePlugins('hr');
HtmlEditorConfig::get('cms')->insertButtonsAfter('sslink', 'hr');

// HtmlEditorConfig::get('cms')->insertButtonsAfter('styleselect', 'fontsizeselect');
