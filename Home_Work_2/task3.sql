-- Добавление внешнего ключа в таблицу mobile_phones
ALTER TABLE mobile_phones
ADD COLUMN manufacturer_id BIGINT,
ADD CONSTRAINT fk_manufacturer
    FOREIGN KEY (manufacturer_id)
    REFERENCES manufacturers(id)
    ON UPDATE CASCADE ON DELETE SET NULL;

-- Обновление значения manufacturer_id в таблице mobile_phones на основе поля manufacturer
UPDATE mobile_phones SET manufacturer_id = 1 WHERE manufacturer = 'Apple';
UPDATE mobile_phones SET manufacturer_id = 2 WHERE manufacturer = 'Samsung';
UPDATE mobile_phones SET manufacturer_id = 3 WHERE manufacturer = 'Huawei';

-- Удаление атрибута manufacturer из таблицы mobile_phones
ALTER TABLE mobile_phones
DROP COLUMN manufacturer;

-- Вывод id, product_name и manufacturer_id из таблицы mobile_phones
SELECT id, product_name, manufacturer_id FROM mobile_phones;

