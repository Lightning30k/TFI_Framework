/*
 * Author:
 * Malbryn
 *
 * Description:
 * Registers the task to be monitored by the server.
 * Use this only if MF_var_end_task_enabled == true.
 *
 * Arguments:
 * _this select 0: STRING - Unique Task ID
 *
 * Return Value:
 * void
 *
 * Example:
 * ["task1"] call MF_fnc_registerTask
 *
 */

if (!isServer) exitWith {};

params ["_taskID"];

MF_var_tasks pushBack _taskID;