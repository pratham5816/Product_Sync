--Query for Product Store's active products
SELECT PSC.PRODUCT_STORE_ID,
       PCM.PRODUCT_ID,
       PCM.THRU_DATE
FROM product_store_catalog PSC
JOIN prod_catalog_category PCC ON PSC.PROD_CATALOG_ID = PCC.PROD_CATALOG_ID
JOIN product_category_member PCM ON PCC.PRODUCT_CATEGORY_ID = PCM.PRODUCT_CATEGORY_ID
WHERE PSC.PRODUCT_STORE_ID = 'TNF_SHOP'
  AND CURRENT_TIMESTAMP >= PCM.FROM_DATE
  AND (PCM.THRU_DATE IS NULL
       OR CURRENT_TIMESTAMP <= PCM.THRU_DATE);





-- count of inactive products of a product store

SELECT PSC.PRODUCT_STORE_ID,
       Count(PCM.PRODUCT_ID)
FROM product_store_catalog PSC
JOIN prod_catalog_category PCC ON PSC.PROD_CATALOG_ID = PCC.PROD_CATALOG_ID
JOIN product_category_member PCM ON PCC.PRODUCT_CATEGORY_ID = PCM.PRODUCT_CATEGORY_ID
WHERE PSC.PRODUCT_STORE_ID = 'TNF_SHOP'
GROUP BY psc.product_store_id;


-- count of active products of a product store

SELECT PSC.PRODUCT_STORE_ID,
       Count(PCM.PRODUCT_ID)
FROM product_store_catalog PSC
JOIN prod_catalog_category PCC ON PSC.PROD_CATALOG_ID = PCC.PROD_CATALOG_ID
JOIN product_category_member PCM ON PCC.PRODUCT_CATEGORY_ID = PCM.PRODUCT_CATEGORY_ID
WHERE PSC.PRODUCT_STORE_ID = 'TNF_SHOP'
  AND CURRENT_TIMESTAMP >= PCM.FROM_DATE
  AND (PCM.THRU_DATE IS NULL
       OR CURRENT_TIMESTAMP <= PCM.THRU_DATE)
GROUP BY psc.product_store_id;












