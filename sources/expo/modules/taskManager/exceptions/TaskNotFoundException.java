package expo.modules.taskManager.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class TaskNotFoundException extends Exception {
    public TaskNotFoundException(String str, String str2) {
        super("Task '" + str + "' not found for app ID '" + str2 + "'.");
    }
}
