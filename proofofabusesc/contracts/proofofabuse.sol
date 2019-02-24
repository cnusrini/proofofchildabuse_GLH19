pragma solidity ^0.5.0;

contract proofofabuse {
  address payable owner;
  struct victim{
    address payable victimName;
    bool isVictimMinor;
    address payable offender;
    uint abuseOccuredOn;
    string abuseOccuredPlace;
    uint abuseReportedOn;

  }
  mapping(address => victim) public victims;
  event createAbuseClaimEvent(address payable victimNameEvnt, bool isVictimMinorEvnt, address payable offenderEvnt, uint abuseOccuredOnEvnt,string abuseOccuredPlaceEvnt,uint abuseReportedOEvntn);
  constructor() public {
    owner = msg.sender;
  }

  function createAbuseClaim
  ( address payable _victimName,
    bool _isVictimMinor,
    address payable _offender,
    uint _abuseOccuredOn,
    string memory _abuseOccuredPlace,
    uint _abuseReportedOn)
    public {
      victim storage _victim = victims[msg.sender];

      _victim.victimName = _victimName;
      _victim.isVictimMinor = _isVictimMinor;
      _victim.offender = _offender;
      _victim.abuseOccuredOn = _abuseOccuredOn;
      _victim.abuseReportedOn = _abuseReportedOn;
      _victim.abuseOccuredPlace = _abuseOccuredPlace;

      emit createAbuseClaimEvent(_victim.victimName,_victim.isVictimMinor,_victim.offender,_victim.abuseOccuredOn,_victim.abuseOccuredPlace,_victim.abuseReportedOn);

    }

    function getClaim(address payable victimname) public view returns(address _victiNamemRet,bool _isVictimMinorRet,address _offenderRet,uint _abuseOccuredOnRet,string memory _abuseOccuredPlaceRet,uint _abuseReportedOnRet){
      victim storage _victimRet = victims[victimname];

      _victiNamemRet = _victimRet.victimName;
      _isVictimMinorRet = _victimRet.isVictimMinor;
      _offenderRet = _victimRet.offender;
      _abuseOccuredOnRet = _victimRet.abuseOccuredOn;
      _abuseOccuredPlaceRet = _victimRet.abuseOccuredPlace;
      _abuseReportedOnRet = _victimRet.abuseReportedOn;

      return(_victiNamemRet, _isVictimMinorRet, _offenderRet, _abuseOccuredOnRet, _abuseOccuredPlaceRet, _abuseReportedOnRet);
    }


}
