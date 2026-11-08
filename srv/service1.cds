using { RISKMANAGEMENT as my } from '../db/schema.cds';

@path : '/service/RiskManagement16Service'
service RiskManagement16Service
{
    @cds.redirection.target
    entity Risk16 as
        projection on my.Risk16;

    @cds.redirection.target
    entity Mitigation16 as
        projection on my.Mitigation16;
}

annotate RiskManagement16Service with @requires :
[
    'authenticated-user'
];
