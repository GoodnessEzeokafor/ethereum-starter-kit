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
    mapping (uint=>Farmer) public farmers;
    mapping (uint=>Buyer) public buyers;
    mapping (uint=>TransportCompany) public transport_companies;
    mapping (uint=>Product) public products;


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
    }

}
