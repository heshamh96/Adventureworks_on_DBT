{{ config(materialized='view') }}
SELECT  [Customer Code]
     ,[Customer name]
      ,[Customer Channel type]
      ,[ X Axis ] [ Customer coordinates X ]
      ,[ Y Axis ] [ Customer coordinates y ]
      ,[Number of Doors]
      ,[Route]
      ,[Rep name]
      ,[Supervisor name]
      ,[Service Channel]
      ,[Depot]
      ,[USM name]
      ,[Region]
      ,[RSM]
      ,[Discount]
  FROM {{ source('CocaCola_DB', 'Customers_DB_2') }}
  