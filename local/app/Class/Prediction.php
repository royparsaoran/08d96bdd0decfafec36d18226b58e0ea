<?php

abstract class Prediction {
    abstract function predictSentiment();
    abstract function cluster($ammount);
    abstract function recommend($ammount,$groups,$member);
    abstract function graph();
}