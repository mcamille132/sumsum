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
class PaintingManager extends AbstractManager
{
    public const TABLE = 'painting';

    /**
     *  Initializes this class.
     */
    public function __construct()
    {
        parent::__construct(self::TABLE);
    }

    /**
     * @param array $item
     * @return int
     */
    public function insert(array $item): int
    {
        // prepared request
        $statement = $this->pdo->prepare("INSERT INTO " . self::TABLE . " 
        (`name`, `url`, `artist`, `nb_note`, `style`, `nationality`, `comments`) VALUES 
        (:name, :url, :artist, :nb_note, :style, :nationality, :comments)");
        $statement->bindValue('name', $item['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $item['url'], \PDO::PARAM_STR);
        $statement->bindValue('artist', $item['artist'], \PDO::PARAM_STR);
        $statement->bindValue('nb_note', $item['nb_note'], \PDO::PARAM_INT);
        $statement->bindValue('style', $item['style'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $item['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $item['comments'], \PDO::PARAM_STR);

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
     * @param array $item
     * @return bool
     */
    public function update(array $item): bool
    {
        // prepared request
        $statement = $this->pdo->prepare("UPDATE " . self::TABLE . " 
        SET `name` = :name, `url` = :url, `artist` = :artist, `nb_vote` = :nb_vote, `style` = :style, `nationality` = :nationality, `comments` = :comments 
        WHERE id=:id");
        $statement->bindValue('id', $item['id'], \PDO::PARAM_INT);
        $statement->bindValue('name', $item['name'], \PDO::PARAM_STR);
        $statement->bindValue('url', $item['url'], \PDO::PARAM_STR);
        $statement->bindValue('artist', $item['artist'], \PDO::PARAM_STR);
        $statement->bindValue('nb_vote', $item['nb_vote'], \PDO::PARAM_INT);
        $statement->bindValue('style', $item['style'], \PDO::PARAM_STR);
        $statement->bindValue('nationality', $item['nationality'], \PDO::PARAM_STR);
        $statement->bindValue('comments', $item['comments'], \PDO::PARAM_STR);

        return $statement->execute();
    }
}