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
class FashionManager extends AbstractManager
{
    /**
     *
     */
    const TABLE = 'fashion';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }


    /**
     * @param array $fashion
     * @return int
     */
    public function insert(array $fashion): int
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " 
        (`name`, `url`, `creator`, `nb_vote`, `baseline`, `localisation`, `comments`) 
        VALUES (:name, :url, :creator, :nb_vote, :baseline, :localisation, :comments)");
        $statement->bindValue('name', $fashion['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $fashion['url'], \PDO::PARAM_STR);
        $statement->bindValue('creator', $fashion['creator'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $fashion['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('baseline', $fashion['baseline'], \PDO::PARAM_STR);
        $statement->bindValue('localisation', $fashion['localisation'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $fashion['comments'], \PDO::PARAM_STR);

        if ($statement->execute()) {
            return (int)$this->pdo->lastInsertId();
        }
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
     * @param array $fashion
     * @return bool
     */
    public function update(array $fashion):bool
    {

        // prepared request
        $statement = $this->pdo->prepare("UPDATE " . self::TABLE . " SET `name`=:name, `url`=:url, `creator`=:creator, `nb_vote`=:nb_vote, `baseline`=:baseline, `localisation`=:localisation, `comments`=:comments WHERE id=:id");
        $statement->bindValue('id', $fashion['id'], \PDO::PARAM_INT);
        $statement->bindValue('name', $fashion['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $fashion['url'], \PDO::PARAM_STR);
        $statement->bindValue('creator', $fashion['creator'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $fashion['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('baseline', $fashion['baseline'], \PDO::PARAM_STR);
        $statement->bindValue('localisation', $fashion['localisation'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $fashion['comments'], \PDO::PARAM_STR);

        return $statement->execute();
    }
}
