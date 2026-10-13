package expo.modules.taskManager.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class TaskRegisteringFailedException extends Exception {
    public TaskRegisteringFailedException(Class cls, Exception exc) {
        super("Initializing task consumer '" + cls.getName() + "' failed. Inherited error: " + exc.getMessage());
    }
}
