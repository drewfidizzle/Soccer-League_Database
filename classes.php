<?php
class Player {
    private $id
    private $first_name;
    private $last_name;
    private $nickname;
    private $jersey_number;
    private $team;
    
    function __construct($id, $first, $last, $number, $team, $nickname = "") {
        $this->id = $id;
        $this->first_name = $first;
        $this->last_name = $last;
        $this->nickname = $nickname;
        $this->jersey_number = $number;
        $this->team = $team;
    }
    
    public function getId()             { return $this->id; }
    public function getFirstName()      { return $this->first_name; }
    public function getLastName()       { return $this->last_name; }
    public function getNickName()       { return $this->nick_name; }
    public function getJerseyNumber()   { return $this->jersey_number; }
    public function getTeamName()       { return $this->team; }
    
}

class Team {
    private $id;
    private $name;
    private $city;
    private $league;
    
    function __construct($id, $name, $city, $league) {
        $this->id = $id;
        $this->name = $name;
        $this->city = $city;
        $this->league = $league;
    }
    
    public function getId()             { return $this->id; }
    public function getName()           { return $this->name; }
    public function getCity()           { return $this->city; }
    public function getLeagueName()     { return $this->league; }

}

class League {
    private $id;
    private $name;
    private $country;
    
    function __construct($id, $name, $country) {
        $this->id = $id;
        $this->name = $name;
        $this->country = $country;
    }
    
    public function getId()             { return $this->id; }
    public function getName()           { return $this->name; }
    public function getCountry()        { return $this->country; }
}

?>