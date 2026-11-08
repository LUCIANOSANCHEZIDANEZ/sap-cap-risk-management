namespace RISKMANAGEMENT;

using { managed } from '@sap/cds/common';

entity Risk16 : managed {
  key ID         : UUID;
  TITLE_16       : String(100);
  PRIO_16        : String(5);
  DESCR_16       : String(100);
  IMPACT_16      : Integer;
  CRITICALITY_16 : Integer;
  mitigation16   : Association to one Mitigation16;
}

entity Mitigation16 : managed {
  key ID         : UUID;
  description_16 : String(100);
  owner_16       : String(100);
  timeline_16    : String(100);
  risk16s        : Association to many Risk16 on risk16s.mitigation16 = $self;
}