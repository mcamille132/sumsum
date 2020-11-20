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
class PhilosopherManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'philosopher';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    /**
     * @param array $philosopher
     * @return int
     */
    public function insert(array $philosopher): int
    {
        // prepared request
        $statement = $this->pdo->prepare("
        INSERT INTO " . self::TABLE . " (`name`, `url`,  `nb_vote`, `style`, `nationality`, `job`, `comments`, `artist`) 
        VALUES (:name, :url, :nb_vote, :style, :nationality, :job, :comments, :artist)");
        $statement->bindValue('name', $philosopher['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $philosopher['url'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $philosopher['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('style', $philosopher['style'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $philosopher['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('job', $philosopher['job'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $philosopher['comments'], \PDO::PARAM_STR);
        $statement->bindValue('artist', $philosopher['artist'], \PDO::PARAM_STR);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
    }


    /**
     * @param int $id
     */
    public function delete(int $id)
    {
        // prepared request
        $statement = $this->pdo->prepare("DELETE FROM " . self::TABLE . " WHERE id=:id");
        $statement->bindValue('id', $id, \PDO::PARAM_INT);
        $statement->execute();
    }


    /**
     * @param array $philosopher
     * @return bool
     */
    public function update(array $philosopher):bool
    {
        // prepared request
        $statement = $this->pdo->prepare("UPDATE philosopher SET nb_vote=:nb_vote WHERE id=:id");
        $statement->bindValue('id', $philosopher['id'], \PDO::PARAM_INT);
        $statement->bindValue('nb_vote', $philosopher['nb_vote'], \PDO::PARAM_INT);
        return $statement->execute();
    }
    
    public function getTop(): array
    {
       return $this->pdo->query("SELECT * FROM " . self::TABLE . " ORDER BY nb_vote DESC LIMIT 0,3")->fetchAll();
    }
}