INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`, `desc`)
VALUES
    ('bcc_canteen', 'Feldflasche', 1, 1, 'item_standard', 1, 'Eine kleine Feldflasche.'),
    ('bcc_bucket_empty', 'Wassereimer (leer)', 10, 1, 'item_standard', 1, 'Ein leerer Eimer. Hocke dich an eine Wasserquelle um ihn aufzufüllen.'),
    ('bcc_bucket_dirtywater', 'Wassereimer (Dreckwasser)', 10, 1, 'item_standard', 1, 'Ein Eimer mit dreckigem Wasser.'),
    ('bcc_bucket_cleanwater', 'Wassereimer (Frischwasser)', 10, 1, 'item_standard', 1, 'Ein Eimer mit sauberem Süßwasser.'),
    ('bcc_empty_bottle', 'Wasserflasche (leer)', 15, 1, 'item_standard', 1, 'Eine leere Wasserflasche aus Glas.'),
    ('bcc_dirty_bottle', 'Wasserflasche (Dreckwasser)', 15, 1, 'item_standard', 1, 'Eine Wasserflasche aus Glas, gefüllt mit dreckigem Wasser.'),
    ('bcc_clean_bottle', 'Wasserflasche (Frischwasser)', 15, 1, 'item_standard', 1, 'Eine Wasserflasche aus Glas, gefüllt mit sauberem Süßwasser.'),
    ('bcc_charcoal', 'Kohletabletten', 15, 1, 'item_standard', 1, 'Tabletten aus Holzkohle. Helfen gegen Beschwerden, die aus dem Konsum von verdrecktem Wasser hervorgehen.')
ON DUPLICATE KEY UPDATE
    `item` = VALUES(`item`),
    `label` = VALUES(`label`),
    `limit` = VALUES(`limit`),
    `can_remove` = VALUES(`can_remove`),
    `type` = VALUES(`type`),
    `usable` = VALUES(`usable`),
    `desc` = VALUES(`desc`);
