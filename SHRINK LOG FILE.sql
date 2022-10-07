

--DBCC SHRINKFILE (SmartQueSys_log, 1)


ALTER DATABASE SmartQueue
        SET RECOVERY SIMPLE
        GO
        DBCC SHRINKFILE (SmartQueue_log, 1)
        GO
        ALTER DATABASE SmartQueue
        SET RECOVERY FULL