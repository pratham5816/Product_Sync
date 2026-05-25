MDM

    - Master Data Manager
    - Also known as Data Manager - It is a bulk import/export engine.

    What problem it solves ?
        While using systems like oms where we need to process bulk data say orders.
        Orders placed daily basis and to manage such data we need something to store the data.

        importing - thousands of orders daily.
        processing/loading -  thousands of products , categories and inventory.
        exporting - thousands of data (order status / brokering / fulfillment / shipment ) to erp/shopify/wms

            Manually it is not possible to do.
            thus, data manager manages all of this.


        File based input - JSON/CSV
        Backgroud Queue
        priority pools
        crash recovery
        data streaming - MDM does not scan full file at once - it does row by row scanning
        Service per row


    Data Manager Directory ----------
                                |
                                |-------------imported
                                |
                                |-------------orders/raw
                                |
                                |-------------shopify



Entites
    DataManagerContent - It saves the file location in mdm.


    Data Manager Config -
            configID - The name of rule
            description - desc
            importServiceName -
            exportServiceName -




System Message -
            It handles message queuing and processing for both incoming and outgoing messages.  (external systems involved)
            Fail and Retry mechanism
            SystemMessageType
            SystemMessageRemote

