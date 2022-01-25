
import { collatedTasks } from '../constants';

//export const collatedTaskExist = selectedProject => collatedTaskExist.find(task => task.key === selectedProject);

export const collatedTasksExist = selectedProject =>
  collatedTasks.find(task => task.key === selectedProject);
