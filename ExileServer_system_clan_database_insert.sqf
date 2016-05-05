/**
 * ExileServer_system_clanID_database_insert
 *
 * Exile Mod
 * www.exilemod.com
 * He Hate Me
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
 private["_clanObject", "_data", "_extDB2Message", _clanID];
 
 _clanObject = this;
 _data =
 [
 _clanObject getVariable ["ExileOwnerUID", ""]
 ];
 _extDB2Message = ["insertclanID", _data] call ExileServer_util_extDB2_createMessage;
 _clanID = _extDB2Message call ExileServer_system_database_query_insertSingle;
 _clanID
