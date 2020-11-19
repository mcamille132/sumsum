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
        INSERT INTO " . self::TABLE . " (`name`, `url`, `quote`, `nb_vote`, `movement`, `nationality`, `job`, `comments`) 
        VALUES (:name, :url, :quote, :nb_vote, :movement, :nationality, :job, :comments)");
        $statement->bindValue('name', $philosopher['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $philosopher['url'], \PDO::PARAM_STR);
        $statement->bindValue('quote', $philosopher['quote'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $philosopher['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('movement', $philosopher['movement'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $philosopher['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('job', $philosopher['job'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $philosopher['comments'], \PDO::PARAM_STR);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
    }


    /**
     * @param int $id
     */
    public function delete(int $philosopher): void
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
        $statement = $this->pdo->prepare("UPDATE " . self::TABLE . "SET `name` = :name, `url` = :url, `quote` = :quote, `nb_vote` = :nb_vote, `movement` = :movement, `nationality` = :nationality, `job` = :job, `comments` = :comments WHERE id=:id");
        $statement->bindValue('id', $philosopher['id'], \PDO::PARAM_INT);
        $statement->bindValue('name', $philosopher['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $philosopher['url'], \PDO::PARAM_STR);
        $statement->bindValue('quote', $philosopher['quote'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $philosopher['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('movement', $philosopher['movement'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $philosopher['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('job', $philosopher['job'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $philosopher['comments'], \PDO::PARAM_STR);

        return $statement->execute();
    }
}