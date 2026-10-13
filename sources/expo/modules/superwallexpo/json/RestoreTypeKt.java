package expo.modules.superwallexpo.json;

import com.superwall.sdk.store.abstractions.transactions.StoreTransaction;
import com.superwall.sdk.store.transactions.RestoreType;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RestoreType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u0004¨\u0006\u0005"}, d2 = {"toJson", "", "", "", "Lcom/superwall/sdk/store/transactions/RestoreType;", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RestoreTypeKt {
    public static final Map<String, Object> toJson(RestoreType restoreType) {
        Intrinsics.checkNotNullParameter(restoreType, "<this>");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (restoreType instanceof RestoreType.ViaPurchase) {
            linkedHashMap.put("type", "viaPurchase");
            StoreTransaction transaction = ((RestoreType.ViaPurchase) restoreType).getTransaction();
            linkedHashMap.put("transaction", transaction != null ? StoreTransactionKt.toJson(transaction) : null);
            return linkedHashMap;
        }
        if (!(restoreType instanceof RestoreType.ViaRestore)) {
            throw new NoWhenBranchMatchedException();
        }
        linkedHashMap.put("type", "viaRestore");
        return linkedHashMap;
    }
}
