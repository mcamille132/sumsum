<?php

/**
 * Created by PhpStorm.
 * User: sylvain
 * Date: 07/03/18
 * Time: 18:20
 * PHP version 7
 */

namespace App\Model;

/**
 *
 */
class MusicManager extends AbstractManager
{
    public const TABLE = 'music';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    /**
     * @param array $music
     * @return int
     */
    public function insert(array $music): int
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . 
        " (`name`,`url`,`artist`,`nb_vote`,`style`,`nationality`,`comments`) 
        VALUES 
        (:name, :url, :artist, :nb_vote, :style, :nationality, :comments)");
        $statement->bindValue('name', $music['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $music['url'], \PDO::PARAM_STR);
        $statement->bindValue('artist', $music['artist'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $music['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('style', $music['style'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $music['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $music['comments'], \PDO::PARAM_STR);

        $statement->execute();
        return (int)$this->pdo->lastInsertId();
    }


    /**
     * @param int $id
     */
    public function delete(int $id): void
    {
        // prepared request
        $statement = $this->pdo->prepare("DELETE FROM " . self::TABLE . " WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }


    /**
     * @param array $music
     * @return bool
     */
    public function update(array $music): bool
    {
        // prepared request
        $statement = $this->pdo->prepare("UPDATE music SET nb_vote=:nb_vote WHERE id=:id"
    );
        $statement->bindValue('id', $music['id'], \PDO::PARAM_INT);
        $statement->bindValue('nb_vote', $music['nb_vote'], \PDO::PARAM_INT);

        return $statement->execute();
    }
    
    public function getTop(): array
    {
       return $this->pdo->query("SELECT * FROM " . self::TABLE . " ORDER BY nb_vote DESC LIMIT 0,3")->fetchAll();
    }
}
