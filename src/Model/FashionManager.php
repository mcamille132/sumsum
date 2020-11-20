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
        (`name`, `url`, `artist`, `nb_vote`, `style`, `nationality`, `comments`) 
        VALUES (:name, :url, :artist, :nb_vote, :style, :nationality, :comments)");
        $statement->bindValue('name', $fashion['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $fashion['url'], \PDO::PARAM_STR);
        $statement->bindValue('artist', $fashion['artist'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $fashion['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('style', $fashion['style'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $fashion['nationality'], \PDO::PARAM_STR);
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
        $statement = $this->pdo->prepare("UPDATE fashion SET nb_vote=:nb_vote WHERE id=:id");
        $statement->bindValue('id', $fashion['id'], \PDO::PARAM_INT);
        $statement->bindValue('url', $fashion['url'], \PDO::PARAM_STR);
        

        return $statement->execute();
    }
    public function getTop(): array
    {
       return $this->pdo->query("SELECT * FROM " . self::TABLE . " ORDER BY nb_vote DESC LIMIT 0,3")->fetchAll();
    }
}
