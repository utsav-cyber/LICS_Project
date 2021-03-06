% -----------------------Knowledge Base-----------------------------------

1.  Name: Varun Sahni
    ID:   2020A7PS0144P
2.  Name: Utsav Goel
    ID:   2020A7PS0984P
3.  Name: Akshat Gupta
    ID:   2020A7PS0096P
4.  Name: Sarvesh Gupta
    ID:   2020A7PS0093P
5.  Name: Risheet Agarwal Mehta
    ID:   2020A7PS1201P


%--------------------------------------------------------------ARTICLE 1---------------------------------------------------------------------
% Section 1
power(congress,legislativePower).
%All legislative are vested in US congress.
conistsOf(congress,senate).
%Congress is consists of senate.
conistsOf(congress,houseOfRepresentatives).
%Congress is consists of House of representatives.

% Section 2
qualified(X,houseOfRepresentatives):-age(X,Y),citizen(X,Z),Y>25,Z>7.
%No person shall be a Representative until he or she has reached the age of twenty-five years and has been a citizen of the United States for seven years, and who has been a resident of the state in which he is elected.


No_Of_reps(newHampshire,3).
No_Of_reps(massachusetts,8).
No_Of_reps(connecticut,5).
No_Of_reps(newYork,6).
No_Of_reps(newJersey,4).
No_Of_reps(pennsylvania,8).
No_Of_reps(delaware,1).
No_Of_reps(maryland,6).
No_Of_reps(virginia,10).
No_Of_reps(northCarolina,5).
No_Of_reps(southCarolina,5).
No_Of_reps(georgia,3).
%number Of Represntatives from each state.

chuse(houseOfRepresentatives,speaker).
chuse(houseOfRepresentatives,otherOfficers).
%House of representatives chooses speakers and other officers.

powerofImpeachment(houseOfRepresentatives).
 
% Section 3
conistOf(senate,senator1).
conistOf(senate,senator2).
%The Senate of the United States shall be comprised of two Senators from each state

numberOfClasses(3).
EndOfAServiceTerm(class1,year(2)).
EndOfAServiceTerm(class2,year(4)).
EndOfAServiceTerm(class3,year(6)).
%The Senators will be split as evenly as possible into three classes as soon as they are gathered as a result of the first election. The seats of the Senators of the first class will be vacated at the end of the second year, the seats of the second class will be vacated at the end of the fourth year, and the seats of the third class will be vacated at the end of the sixth year, allowing one third to be elected every second year.


qualified(senator,X):-age(X,Y),citizen(X,Z),Y>30,Z>9.
%No person shall be elected to the Senate unless he has reached the age of thirty years, has been a citizen of the United States for nine years.

PresidentOfSenate(vicePresidentOfUS).
%Vice president of US is the president of senate.

chuse(senate,officers).
chuse(senate,presidentProTempore).
%senate chuse officers and a president pro tempore.

powerofImpeachment(senate).
%Only senate has the power of impeachement.

Consequence_impeachement(removal(office)).
Consequence_impeachement(disqualification).
Consequence_impeachement(Cannotenjoy(officeHonour)).
%In cases of impeachment, the punishment shall be limited to removal from office and disqualification from holding or enjoying any office of honour.

% Section 4
Legislaturethereof(Details_of_meeting(X)).
Details_of_meeting(time).
Details_of_meeting(place).
Details_of_meeting(Manner_of_holding_elections).
meetingOfCongress(2/12/2019).
%The Congress shall assemble at least once in every Year, and such Meeting shall be [on the first Monday in December)

% Section 5
legitimate(houseOfRepresentatives).
legitimate(senate).
publish_proceedings_timely(houseOfRepresentatives,proceedings).
publish_proceedings_timely(houseOfRepresentatives,membersVotes).
publish_proceedings_timely(senate,proceedings).
publish_proceedings_timely(senate,membersVotes).
%Each House should keep a Journal of its Proceedings and publish it from time to time.

consentforAdjourning(senate,houseOfRepresentatives).
consentforAdjourning(houseOfRepresentatives,senate).
%Neither House, during the Session of Congress, shall, without the Consent of the other, adjourn for more than three days.

% Section 6
compensation(senator).
compensation(houseOfRepresentatives).
salaryOfCongressMembers(treasury).
%Senators and Representatives shall be compensated for their services and paid out of the United States Treasury.


% Section 7
bills(houseOfRepresentatives,raise(revenue)).
%All Bills for raising Revenue shall originate in the House of Representatives.
bills(senator,amendmants).
%Senate may propose or concur with Amendments as on other Bills.

% Section 8
power(congress,lay(taxes)).
power(congress,collect(taxes)).
power(congress,duties).
power(congress,imposts).
power(congress,excises).
power(congress,pay(debts)).
power(congress,provide(commonDefense)).
power(congress,generalWalfare).
power(congress,borrow(money)).
power(congress,regulate(commerce)).
power(congress,ruleOfNaturalisation).
power(congress,lawsOnBankruptcies).
power(congress,coin(money)).
power(congress,punishment(counterfeiting)).
power(congress,postOffice).
power(congress,roads).
power(congress,promote(science)).
power(congress,promote(arts)).
power(congress,constitute(tribunialInferior)).
power(congress,define(piraciesFelonies)).
power(congress,punish(piraciesFelonies)).
power(congress,declare(war)).
power(congress,raise(armies)).
power(congress,support(armies)).
power(congress,raise(navy)).
power(congress,support(navy)).
power(congress,make(ruleForGovernment)).
power(congress,regulate(armyNavy)).
power(congress,execute(lawsOfTheUnion)).
power(congress,organise(military)).
power(congress,arm(military)).
power(congress,discipline(military)).
power(congress,execute(laws)).
%The powers of congress has been listed above.
 
% Section 9
RestrictedPowers(congress,writOfHabeasCorpus).
RestrictedPowers(congress,exPostFacto).
RestrictedPowers(congress,elasticClause).
RestrictedPowers(congress,titlesOfNobility).
RestrictedPowers(congress,spend(money)).
%Actions not permitted to the congress.

% Section 10
RestrictedPowers(states,treaty(foreignCountries)).
RestrictedPowers(states,make(ownMoney)).
RestrictedPowers(states,import(tax)).
RestrictedPowers(states,export(tax)).
RestrictedPowers(states,declare(war)).
%Actions not permitted to states.

---------------------------------------------------------------------%Article 2--------------------------------------------------------------
%Section1
TotalSum(X,Y,Z):-Z is X+Y.
TotalSum(No_representatives,No_senators,No_electors).
/* Each State shall appoint a number of Electors equal to the total number of Senators and Representatives.No_electors=No_representatives+No_senators.
*/

executivePower(president).
/* The executive power shall be vested in the president of the United States.
*/

ElectionFrequency(Post,Term):-(Post=president;Post=vicePresident),Term=4.
/* electionFrequency/2 tells about the term period of the person hloding the post of President or the Vice President.
*/

power(state, appointElectors(NameOfElector)) :-
 not(representative(NameOfElector)),
 not(member(senate(NameOfElector))),
 not(member(OfficeOfTrustOrProfit(NameOfElector))).
% The state shall appoint an elector who is neither a representative, a Senator, or a person who owns a house of trust or profit.

qualified(X,president) :- age(X,Y),Y>=35,citizen(X,Z),Z>=14.
/* qualified/2 checks for a person qualification to become a President.
*/

power(congress,[timeOfChoosingElectorals,dayOFVoting]).
/* power/2 enlists the powers of the congress.
*/

%Section 2
commanderInChiefOfArmy(president).
commanderInChiefOfNavy(president).
/* this predicate tells that which person is commander in chief of the army and the navy.
*/

power(president,grant(pardon(offenceAgainstUS))).
power(president,[makeTreaties,nominateAmbassadors,fillVacancies]).
/*
*/


%Section 3

duty(president,giveSpeechAboutCountry).

/* duty predicate shows the duty performed by the President.
*/

power(president,Condition):-Conditon=dismissCongressUntilProperTime; Condition=commisionOfficers.

/* power predicate enlist the powers of the President.
*/


%Section 4
removalFromOffice([treason,bribery,highCrimes,misdemeanors]).

/* removedFromOffice predicate gives the condition to remove the President, Vice President and all civil Officers from their office  
*/
% -----------------------------------------------------------------ARTICLE 3-----------------------------------------------------------------
% Section 1
judicialPower(unitedStates, supremeCourt).
% The judicialPower is veseted in the supreme court.

judicialPower(unitedStates, establishedByCongress(inferiorCourts)).
% The judicialPower is veseted in the inferior courts established by the Congress.

goodBehaviour(X) :- X = judge(supremeCourt), X = judge(inferiorCourts).
% The judges of both the supreme court and the inferior courts should hold their offices in good good behaviour
receivesCompensation(X) :- goodBehaviour(X).
% The judges of both the supreme court and the inferior courts receive compensation for their services.

% Section 2
JudicialPowerScope(lawsOfUnitedStates).
% The judicial power extends to the laws of the United States.

JudicialPowerScope(equities).
% The judicial power extends to the equities arising under the constitution.

JudicialPowerScope(treaties).
% The judicial power extends to the treaties.

JudicialPowerScope(casesAffectingAmbassadors).
% The judicial power extends to all cases affecting the ambassadors.

JudicialPowerScope(casesAffectingMinisters).
% The judicial power extends to all cases affecting the ministers.

JudicialPowerScope(casesAffectingConsuls).
% The judicial power extends to all cases affecting the consuls.

JudicialPowerScope(casesOfadmiralJurisdiction).
% The judicial power extends to all cases of admiral jurisdiction.

JudicialPowerScope(casesOfmaritimeJurisdiction).
% The judicial power extends to all cases of maritime jurisdiction.

JudicialPowerScope(controversiesInvolvingUnitedStates).
% The judicial power extends to all controversies involving the United States.

JudicialPowerScope(controversiesBetween(X)):- X = twoOrMoreStates; X = stateAndCitizenOfDifferentState; X = citizensOfDifferentStates.
% The judicial power extends to all controversies between the two or more states, the state and citizen of a different state, and the citizens of a different states. 

JudicialPowerScope(disputeAmongCitizensSameStateClaimingLandsUnderGrantsOfDifferentStates).
% The judicial power extends to all disputes among citizens of the same state claiming lands under grants of different states.

authority(casesAffectingAmbassadors, supremeCourt).
% The authority of the cases affecting the ambassadors is vested in the supreme court.

authority(casesAffectingPublicMinisters, supremeCourt).
% The authority of the cases affecting the public ministers is vested in the supreme court.

authority(casesAffectingConsuls, supremeCourt).
% The authority of the cases affecting the consuls is vested in the supreme court.

authority(casesInvolvingAState, supremeCourt).
% The authority of the cases involving a state is vested in the supreme court.

trials(crimes, jury).
% The trials of crimes are conducted by the jury.

trialsShallHeld(state(crimeCommitted)).
% The trials shall be held in the state in which the crime was committed.

power(congress, decideTrialPlaceWhenCrimeNotHeldInState).
% The power of the Congress is to decide the trial place when the crime is not commited in any state.

% Section 3
treasonCause(levyingWar).
% levying war agaist united States is a cause for Treason
.
treasonCause(adheringToEnemies).
% adhering to enemies of united States is a cause for Treason.

treasonCause(comfortingEnemies).
% comforting enemies of united States is a cause for Treason.

treasonCause(aidingEnemies).
% aiding enemies of united States is a cause for Treason.

convictedOfTreason(Person,Treason):- treasonCause(Treason),testimony(Person,A),testimony(Person,B),A=\=B.
% No person is convicted of treason without the testimony of two person.

power(congress, declarePunishmentOfTreason).
% The power of the Congress is to declare the punishment of treason.


% --------------------------------------------------------------------ARTICLE 4--------------------------------------------------------------
% Section 1
StateProvideToEveryOtherState(faith(X), credit(X)) :- X = publicActs; X = records; X = judicialProceedings.
% Each state must provide full faith and credit to the public acts, records, and judicial proceedings of every other state.

power(congress,direct(manner(X))):- X= acts; X= records; X= proceedings.
% congress has the power to direct the manner of the acts, records, and proceedings of every state.

% Section 2
right(citizen, X):- X = privilegesInSeveralStates; X = ImmunitiesInSeveralStates. 
% The Citizens of each State shall be entitled to all Privileges and Immunities of Citizens in the several States

power(executiveAuthorityOfTheState, toBringBackThePersonWhoFleeFromJustice).
% The executive authority of the State has the power to bring back the person who committed a crime in one state and fled to another state.

% Section 3
newStatesInUnion(congress, Condition, conditionNotFollowed(X)):- Condition = needsTheConsentforAdjourningOfTheLegislatureAndCongress,
X = noNewStatesShallBeFormedInTheJurisdictionOfAnyOtherStateNorAnyStateShallbeformedByTheJunctionOfTwoOrMoreStates.
% The Congress shall have the power to form new States in the union, but no new States shall be formed in the Jurisdiction of any other State, nor any State shall be formed by the Junction of two or more States without the consentforAdjourning of the legislatures of the state as well as the Congress.

power(congress,dispose(rulesRegulationsConcerningTerritoryPropertyBelongingToUnitedStates)).
% The Congress has the power to dispose of rules and regulations concerning the Territory or other Property belonging to the United States

power(congress,make(rulesRegulationsConcerningTerritoryPropertyBelongingToUnitedStates)).
% The Congress has the power to make rules and regulations concerning the Territory or other Property belonging to the United States

guranteeToEveryState(unitedStates, X):- X= aRepublicanFormOfGovernment; X= protectionAgainstInvasion.
% United States Shall gurantee to every state in this union a republican form of government and shall protect each of them against invasion.

% ------------------------------------------------------------------ARTICLE 5-----------------------------------------------------

proposeAmendments(congress) :- needsConsentforAdjourning(X) :- X = bothHouses(twoThird); X= legislaturesOfSeveralStates(twoThird).
% The Congress, whenever two thirds of both Houses shall deem it necessary, shall propose Amendments to this Constitution, or, when Legislatures of two thirds of the several States, shall call a Convention for proposing Amendments

validAmendment :- ratified((legislaturesOfSeveralStates(threeForth))).
 % The Amendment shall be valid if ratified by three-fourths of the legislatures of the several States.

% --------------------------------------------------------------------ARTICLE 6--------------------------------------------------

debtsValid(debtsContractedbefore(confederation)).
% All debts contracted prior to the adoption of the Constitution shall remain valid.

engagementsValid(engagementsEnteredbefore(confederation)).
% All engagements entered prior to the adoption of the Constitution shall remain valid.

supremeLawOfLand(constitution).
% The supreme law of the land shall be the Constitution.

supremeLawOfLand(lawsofUS).
% The supreme law of the land shall be the laws of the United States.

judgesboundby(X) :- supremeLawOfLand(X).
% The judges in every states shall be bound by the constitution and the laws of the United States.

boundByOathToSupportConstitution(X) :- X = [senators,representatives,membersofstatelegislatures,executiveofficers,judicialofficers].
% Senators, Representatives, Members of State Legislatures, all executive and judicial officers both of US and of several states shall be bound by oath to support this constitution

qualificationToAnyOffice(noReligiousTest).
% qualification to any office does not require a religious test.

qualificationToAnyPublicTrust(noReligiousTest).
% qualification to any public trust does not require a religious test.

%--------------------------------------------------------------Article 7---------------------------------------------------------------------
establishing(constitution) :- ratification(numberOfStates(N)), N>8.
%The ratification of nine states' conventions shall be sufficient for the establishment of this Constitution between the states that have done so.




%-------------------------------------------------------THE AMENDMENTS TO THE CONSTITUTION OF THE UNITED STATES AS RATIFIED BY THE STATES---------------------------------------

%Preamble ???

areAmendments(ratified(threefourthofLegislatures)).
//inAccordance(Amendment, Fifth Article).

 

%------------------------------------------------------------------------------------AMENDMENT 1---------------------------------------------------------------------------------------

saveFreedomOf(religion).
saveFreedomOf(speech).
saveFreedomOf(press).
saveFreedomOf(assembly).
saveFreedomOf(petition(government)).

%The Congress should make no laws to prohibit the basic rights of religion , speech , petition or press.


%--------------------------------------------------------------------------------------AMENDMENT 2--------------------------------------------------------------------------------------

right(X, toKeepAndBearArms) :- citizen(X,_).
right(State, haveAWellRegulatedMilitaForSecurity) :- stateOfUS(State).
%People have to right to bear arms.
 

%-------------------------------------------------------------------------------------AMENDMENT 3---------------------------------------------------------------------------------------

notAllowed(toQuarterAnySoldierInAnyHouseWithoutConsentOfOwner, inTimeOfPeace).
notAllowed(toQuarterAnySoldierInAnyHouseWithoutConsentOfOwner, inTimeOfWar).
canBeQuartered(inAMannerPrescribedByLaw).
%In times of peace or in times of war , soldiers should not be quartered in any house with the owner's permission.
 
%-----------------------------------------------------------------------------------AMENDMENT 4----------------------------------------------------------------------------------------

right(X, secureInTheirPersons):- citizen(X,_).
right(X, secureInTheirHouses):- citizen(X,_).
right(X, secureInTheirPapers):- citizen(X,_).
right(X, secureInTheirEffects):- citizen(X,_).
right(X, secureAgainstUnreasonableSearchesAndSeizures):- citizen(X,_).
right(people, noWarrantsShallIssue):- citizen(X,_).
??
??
conditions(uponProbableCauseSupportedByOathOrAffirmationsParticularlyDescribingThePlaceToBeSearchedAndPersonOrThingsToBeSeized).
??
right(people, notSecureAgainstUnreasonableSearchesAndSeizures, X) :- conditions(X).
right(people, warrantsShallIssue, X) :- conditions(X).
%people have their rights against unreasonable searches and seizures unless their is probable cause.
 

%-----------------------------------------------------------------------------------AMENDMENT 5--------------------------------------------------------------------------------------------

restrict(jeopardyTwice).
%No jeopardy for the same offence twice.

right(grandJuryWillAccused).
capturePrevention(LandWithoutCompensation,government).
protection(forcfullSelfIncriminate).
%No person shall be held to account for a capital, or otherwise infamous crime, unless on a Grand Jury's presentment or indictment,  
when in actual service in time of War or public danger; nor shall any person be compelled to be a witness against himself in any criminal case.



%-------------------------------------------------------------------------------------AMENDMENT 6------------------------------------------------------------------------------------

right(X,trial(speedyAndPublicTrialbyAnImpartialJury)):- citizen(X,_).\
right(X,prosecution(inTheStateAndDistrictWhereinCrimeHasBeenCommited)):- citizen(X,_).
right(X,informed(ofTheNatureAndCauseOfAccusation)):- citizen(X,_).
right(X,confronted(withTheWitnessDuringProsecution)):- citizen(X,_).
right(X,haveCompulsoryProcessForObtainingWitnessesInHisFavor)
:- citizen(X,_).
right(X,assisanceOfCounsel):- citizen(X,_).
%In all criminal prosecutions, the accused has the right to a speedy and public trial. Also he/she can question witness.


%-----------------------------------------------------------------------------------------AMENDMENT 7---------------------------------------------------------------------------------

civilCases(value(20orMore)) :- hasRight(juryTrial).
%IN civil cases, If the value in question exceeds 20$, thw right to jury trial must be retained.
 

%------------------------------------------------------------------------------------------AMENDMENT 8-----------------------------------------------------------------------------------

notRequired(excess(bail), punish(cruel), defendant).
%Excessive bail must not be needed, nor excessive fines imposed, nor harsh and unusual penalties imposed on the defendant.

 
%----------------------------------------------------------------------------------------AMENDMENT 9-------------------------------------------------------------------------------------

shouldNotDisparage(additionalRights).
%The mention of someadditional rights in the Constitution should not be interpreted as disparagement of other rights held by the people.
 

%---------------------------------------------------------------------------------------AMENDMENT 10---------------------------------------------------------------------------------------

powerNotDelegatedToUS(State).
powerNotDelegatedToUS(people).
%The powers not delegated to the United States by the Constitution, nor prohibited to the States by it, are reserved to the States.

 
%---------------------------------------------------------------------------------------AMENDMENT 11----------------------------------------------------------------------------------------

USjurisdictionRestricted(citizenOfForeignState, UScitizen).
%The United States' judicial jurisdiction does not extend to any equity suit pursued against one of the United States by citizens of another state.
 

%-------------------------------------------------------------------------------------AMENDMENT 12----------------------------------------------------------------------------------------

president(majorElectorsWinner).
%the one who get major electors vote, win the election and become the president.

tie(president) :- vote(houseOfRepresentatives).
%In case of tie, house of representatives choose the president.

cantChoosebefore(houseOfRepresntatives, Mar4) :- makePresident(vicePresident).
%In case of absence of president due to death or any other reason ,House of representatives cannot choose president before March 4 ,
Vice president shall act as president in this time.

makeVicePresident(majorElectorsWinner).
%the one who get major electors vote, win the election and become the president.

ifTie(vicePresident) :- voteBy(Senate). 
%In case of tie, senate choose the vice president.


%-------------------------------------------------------------------------------------AMENDMENT 13----------------------------------------------------------------------------------------

%SECTION 1

iradicate(slavery).
%Slavery and involuntary servitude shall not exist.

%SECTION 2

enforce(power,iradicate(slavery)).
%Congress shall have power to enforce this article by
appropriate legislation.


%--------------------------------------------------------------------------------------AMENDMENT 14-------------------------------------------------------------------------------------------

%SECTION 1

citizen(X,_) :- bornInUS(X);naturalisedInUs(X).
%Citizens of the United States are all people born or naturalised in the United States.

state_cannot(abridge_the_privileges_of_citizens_of_USA)
state_cannot(deprive_person_of_life_liberty_and_property_without_process_of_law).
state_cannot(deny_anyone_from_its_jurisdiction_equal_protection_of_laws).
%No State shall deprive any person of life, liberty, or property without due process of law; and no State shall refuse equal protection of the law to any person within its jurisdiction.

 
%SECTION 2

equal_right_to_vote(X) :- not_rebellion_or_criminal(X),gender(X,male),citizen(X,Y),Y>=21.
%Anyone above 21 years of age without any discrimination has the right to vote.

%SECTION 3

previously_elected_candidate(X,can't_be_chosen_again_to_support_constitution) :-
rebel(X),having_less_than_two_third_votes_in_house(X).
%The preson involved in any rebellion or convicted of helping shall not be elected to any office.

%SECTION 4

invalidate(ConferenceDebt).

%SECTION 5

power(enforce(amendment)).
%The Congress shall have the power to enforce, by appropriate legislation, the provisions of this article


%-----------------------------------------------------------------------------------AMENDMENT 15----------------------------------------------------------------------------

%Section1
not_to_deny_citizen_rights(race).
not_to_deny_citizen_rights(color).
not_to_deny_citizen_rights(previous_condition_of_servitude).
%NO one can be denied citizen rights on the basis of race,colour and preious condition of servitude.

%Section2
EnforceThisArticle(congress,appropriateLegislation).
%Congress has the power to implement this constitution using appropriate legislation.


%--------------------------------------------------------------------------------------AMENDMENT 16----------------------------------------------------------------------------

power_to_Collect_incomeTax(Congress ,People).
%Congress has the power to collect income tax on all incomes irrespective of population of state.


%-----------------------------------------------------------------------------------AMENDMENT 17----------------------------------------------------------------------------

electorOfSenators(electedByPeopleOfState).
%Senate  is elected by poeple of the state.
DurationOfSenators(6years).
%Senate is elected for a period of 6 years.
senatorsElectedFromEachState(2).
%2 senators are elected from each state.


%-----------------------------------------------------------------------------------AMENDMENT 18----------------------------------------------------------------------------

%SECTION 1
prohibitionOf(manufacturingTransportingAndSaleOfIntoxicatingLiquors).
%Manufacturing,transporting and sale of intoxiated liquor is prohibited in US.

%SECTION 2
EnforceThisArticle(X,appropriateLegislation).
X = Congress ; OtherStates
%Congress and the several States have power to enforce this article by appropriate legislation.

%SECTION 3
implementationOfThisArticle(IfMadeAnAmendment7YearsAfterSubmission).
%This atricle will only be operative if it is ratified as an amendment within 7 years of submission.


%-----------------------------------------------------------------------------------AMENDMENT 19----------------------------------------------------------------------------
denyCitizenRights(OnTheBasisOfsex).
%No citizen can be denied to votr on the basis of sex/gender.

EnforceThisArticle(congress,appropriateLegislation).
%Congress has the power to implement this constitution using appropriate legislation.

% --------------------------------------------------------------------------------Amendment 20-------------------------------------------------------------------------------
 % Section 1
 term(president, endingDate(20,1)).
 % The terms of the President shall end on the 20th day of January

 term(vicePresident, endingDate(20,1)).
 % The terms of the Vice President shall end on the 20th day of January

 term(senators, endingDate(3,1)).
 % The terms of the Senators shall end on the 3rd day of January

 term(representative, endingDate(3,1)).
 % The terms of the representative shall end on the 3rd day of January

 % Section 2
 meetingOfCongress(3, 1, _).
 % The Congress shall assemble at least once in every year on the 3d day of January

 % Section 3

 vicePresidentPromotedToPresident(Condition):-
 Condition=presidentDies;
 Condition=presidentIsNotChoosenBeforeBeginningOfTheTenure;
 Condition=presidentElectedFailsToQualify.
 % If the president dies, the vice president shall be promoted to the president.
 % If the president is not chosen before the beginning of the tenure, the vice president shall be promoted to the president until a president has been elected.
 % If the president elected fails to qualify, the vice president shall be promoted to the president until a president shall have qualified.


% section 4

 selectionOfMemeberAsSpecifiedByCongress(Post,Body):-(Post=president,Body=houseOfRepresentatives);(Post=vicePresident,Body=senate).
 % In case of death the congress Shall delegate its power to the House of Representatives to choose the president.
 % In case of death the congress Shall delegate its power to the Senate to choose the vice president.

% section 5
 
 section1And2ShallComeIntoEffect(15,10).
 % Sections 1 and 2 shall take effect on the 15th day of October.

% section 6

 validation(AmendmentNumber,DateRatified,Criteria):-
 AmendmentNumber=20,
 (DateRatified>1931,DateRatified<1940, Criteria=greaterThanThreeFourthOfLegislatureOfSeveralStates);
 ((DateRatified<1932;DateRatified>1939), Criteria=dateRatifiedNotInRange).

% This article shall be inoperative unless it shall have been ratified as an amendment by the leg islatures of three-fourths of the several States and unless the date of ratification is in the range of 1931 to 1940.

% ----------------------------------------------------------------------------------------------------Amendment 21-----------------------------------------------------------------------

% section 1
repealed(18thArticleOfAmendment).
% The eighteenth article of amendment has been repealed.

% section 2
prohibited(transportation_Importation_Possession_Use_Of_IntoxicatingLiquor).
% transportation, importation, possession, use, or sale of intoxicating liquor is prohibited.

% section 3
 validation(AmendmentNumber,DateRatified,Criteria):-
 AmendmentNumber=21, 
 (DateRatified>1932,DateRatified<1941,Criteria=ratifiedAsAnAmendmentToTheConstitutionByConventionsInTheSeveralStates);
 ((DateRatified<1933;DateRatified>1940),Criteria=dateRatifiedNotInRange).
% This article shall be inoperative unless it shall have been ratified as an amendment to the constitution by the leg islatures the several States and unless the date of ratification is in the range of 1932 to 1941.

% ---------------------------------------------------------------------------------------------------Amendment 22----------------------------------------------------------------------------------------------------------

% section 1
 whoCanBePresident(WhichTurnHeIsAppointedPresident,YearOfAppointmentForThisTime,TenureWillRemain):-
 (WhichTurnHeIsAppointedPresident<3,TenureWillRemain=yes);
 (WhichTurnHeIsAppointedPresident>2,(YearOfAppointmentForThisTime-1951)<5,TenureWillRemain=yes);
 (WhichTurnHeIsAppointedPresident>2,(YearOfAppointmentForThisTime-1951)>4,TenureWillRemain=no).


% section 2
validation(AmendmentNumber,DateRatified,Criteria):-
AmendmentNumber=22, (DateRatified>1946,DateRatified<1955,Criteria=greaterThanThreeFourthOfLegislatureOfSeveralStates);
((DateRatified<1947;DateRatified>1954),Criteria=dateRatifiedNotInRange).
% This article shall be inoperative unless it shall have been ratified as an amendment to the constitution by the leg islatures of three-fourths of the several States and unless the date of ratification is in the range of 1946 to 1955.

% -----------------------------------------------------------------------------------------------------Amendment 23----------------------------------------------------------------------------------------------------------

% section 1
appoint(State,ElectorsOfPresident,ElectorsOfVicePresident,Senators,Representatives):- 
stateOfUS(State),
+(ElectorsOfPresident,ElectorsOfVicePresident) is +(Senators,Representatives).
% Number of electors of President and Vice president is equal to the whole number of senators and representative in congress to which the state is entitled to.

% section 2
power(congress, enforcementOfAmendment(23).
% The Congress has the power to enforce amendment 23

% -----------------------------------------------------------------------------------------------------Amendment 24--------------------------------------------------------------------------------------------------------

% section 1
 right(Citizen,Right):-citizen(Citizen,Age),
 (Right=participateInElectionForPresidentIfTaxNotGiven;
 Right=participateInElectionForVicePresidentIfTaxNotGiven;
 Right=participateInElectionForElectorsOfPresidentAndVicePresidentIfTaxNotGiven;
 Right=participateInElectionForSenatorIfTaxNotGiven;
 Right=participateInElectionForRepresentativeIfTaxNotGiven).
% the citizen has the right to participate in the election for president, vice president, senator and representative in congress even if he or she has not paid tax.

% section 2
power(congress, enforcementOfAmendment(24).
% The Congress has the power to enforce amendment 24

% ----------------------------------------------------------------------------------------------------Amendment 25------------------------------------------------------------------------------------------------------------

% section 1
postEmpty(PresidentPresent,VicePresidentPresent,Condition,WhoCanActAsPresident):-
(PresidentPresent=n,VicePresidentPresent=y,condition3(Condition,WhoCanActAsPresident)).
 
condition3(Condition,WhoCanActAsPresident):-
(Condition=presidentDies;
Condition=presidentResigns),
WhoCanActAsPresident=vicePresident.
% postEmpty predicate specifies who will become president in case the president resigns or dies.

% section 2
postEmpty(Post,NominatedBy,Condition):-
Post=vicePresident,
NominatedBy=president,
Condition=nominatedVicePresidentShallTakeConformationByMajorityOfVotedInBothHouses.
% the vice president nominated by the president shall take the office upon conformation by majority of voted in both houses.

% section 3
powerAndDutiesShift(From,To,By,Condition):-
From=president,
To=vicePresident,
By=presidentOfSenateAndSpeakerOfHouseOfRepresentatives,
Condition=presidentWritesToPresidentOfSenateAndSpeakerOfHouseOfRepresentativesThatHeIsUnableToDischargeHisPowersAndDuties.

% The power and duties of president are temporarly transfered to the vice president when president feels that he is unable to perform his duties. 
% He transmits a written document to the pro tempore of the senate and to the house of representative for the same.


% section 4
powerAndDutiesShift(From,To,By,Condition):-
From=president,
To=vicePresident,
(By=presidentOfSenate;By=speakerOfHouseOfRepresentatives;By=vicePresident;By=principleOfficersOfExecutiveDepartment),
Condition=ifpresidentOfSenateAndSpeakerOfHouseOfRepresentativesAndVicePresidentAndMajorityOfPrincipleOfficersOfExecutiveDepartmentFeelsThatPresidentIsNotAbleToExerciseHisPowersProperly.

% whenever the vice president and majority of priciple officer of the executive department feel that president is unable to perform his duties. The vice president temporarly assumes the power and the duties of the president

% --------------------------------------------------------------------------------------------------------------------Amendment 26-------------------------------------------------------------------------------------------------------

% section 1
right(Person,Right):-age(Person,Age),condition(Age,Right).
condition(Age,Right):-(Age>17,Right=notDenialOfRightToVote) ; (Age<18, Right= notEligibleToVotingRight).
% The people with the age of 18 years and older shall be entitled to vote.

% section 2
power(congress, enforcementOfAmendment(26).
% The Congress has the power to enforce amendment 26

% ---------------------------------------------------------------------------------------------------------------------Amendment 27----------------------------------------------------------------------------------------------------

lawToAmendTheCompensationForServicesOf(Body,Condition):- (Body=senators;Body=representatives),
Condition = electionOfRepresentativesShallHaveIntervened.
% No law altering the pay for the services of Senators and Representatives shall take effect until a representative election has occurred.

% -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
%end