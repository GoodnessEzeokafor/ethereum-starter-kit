/*
    PUBLIC PROPERTIES
        - dapp_name
        - dapp_builders
        - farmers
        - buyers
        - products
        - transport companies
        - farmerCont
        - buyerCount
        - transportCompanyCount
        - productsCount


    PUBLIC METHODS
        - CreateFarmer
        - CreateBuyer
        - CreateTransportCompanies
        - CreateProduct

        - getFarmerDetail
        - getTransportCompanyDetail
        - getBuyerDetail
        - getProductDetail

        - traceProduct
        - store transactionHash
*/
pragma solidity ^0.5.0;

contract MarketPlace{
    string public dapp_name;
    string public dapp_builder = "@GoodnessEzeokafor";
    
    uint public farmerCount =0;
    uint public buyerCount =0;
    uint public transportCompanyCount =0;
    uint public traceCount =0;
    
    mapping (uint=>Farmer) public farmers;
    mapping (uint=>Buyer) public buyers;
    mapping (uint=>TransportCompany) public transport_companies;
    mapping (uint=>Product) public products;


    /* START STRUCT  */

    struct Farmer{
        uint id;
        string full_name;
        string picture;
        string farm_name;
        string email_adddress;
        string farm_description;
        address farmer_wallet_address;
    }


    struct Buyer{
        uint id;
        string full_name;
        string picture;
        string email_address;
        address buyer_wallet_address;
    }


    struct TransportCompany{
        uint id;
        string transport_name;
        string transport_description;
        string picture;       
    }


    struct Product{
        uint id;
        string product_name;
        string product_description;
        uint product_price;
        string upload_image;
        bool sold;
        address payable seller;
        uint price;
    }

    struct Trace{
        uint id;
        uint product_id;
        uint transport_company_id;
        bool left;
        bool arrived;
        bool pending; 
        uint timestamp;
        uint updated;
    }



    /* END STRUCT  */

    /*START EVENT */
    event FarmCreated(
        uint id,
        string full_name,
        string picture,
        string farm_name,
        string email_adddress,
        string farm_description,
        address farmer_wallet_address
    );


    event BuyerCreated(
        uint id,
        string full_name,
        string picture,
        string email_address,
        address buyer_wallet_address
    );
    event ProductCreated(
        uint id,
        string product_name,
        string product_description,
        uint product_price,
        string upload_image,
        bool sold,
        address payable seller,
        uint price
    );
    event TraceCreated(
        uint id,
        uint product_id,
        uint transport_company_id,
        bool left,
        bool arrived,
        bool pending,
        uint timestamp,
        uint updated
    ); 
    event TransportCompanyCreated(
        uint id,
        string transport_name,
        string transport_description,
        string picture  
    );
    /* END EVENT */
    /* START METHOD */
    function createSellerProfile(
        string memory _full_name,
        string memory _picture,
        string memory _farm_name,
        string memory _email_address,
        string memory _farm_description
    )public{
        farmerCount++;
        farmers[farmerCount] = Farmer(
            farmerCount,
            _full_name,
            _picture,
            _farm_name,
            _email_address,
            _farm_description,
            msg.sender
        );

        emit FarmCreated(
            farmerCount,
            _full_name,
            _picture,
            _farm_name,
            _email_address,
            _farm_description,
            msg.sender
        );

    }


    function createBuyer(

        string memory _full_name,
        string memory _picture,
        string memory  _email_address
        // address buyer_wallet_address
    )public{
        buyerCount++;
        buyers[buyerCount] = Buyer(
                buyerCount,
                _full_name,
                _picture,
                _email_address,
                msg.sender
        );
        emit BuyerCreated(
            buyerCount,
                _full_name,
                _picture,
                _email_address,
                msg.sender
        );
    }


    
    /* END METHOD */
    

}
