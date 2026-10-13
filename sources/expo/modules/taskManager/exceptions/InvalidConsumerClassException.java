package expo.modules.taskManager.exceptions;

/* JADX INFO: loaded from: classes6.dex */
public class InvalidConsumerClassException extends Exception {
    public InvalidConsumerClassException(String str) {
        super("Invalid task consumer. Cannot unregister task with name '" + str + "' because it is associated with different consumer class.");
    }
}
