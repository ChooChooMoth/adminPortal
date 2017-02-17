<?php

if (Yii::$app->user->isGuest)
    header('Location: ?r=site%2Flogin');
else
    header('Location: ?r=computers%2Findex');

