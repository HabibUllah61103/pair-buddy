package expo.modules.superwallexpo.json;

import com.superwall.sdk.delegate.RestorationResult;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RestorationResult.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u001a\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00032\u0006\u0010\u0007\u001a\u00020\u0001¨\u0006\b"}, d2 = {"restorationResultFromJson", "Lcom/superwall/sdk/delegate/RestorationResult;", "json", "", "", "", "restorationResultToJson", "result", "expo-superwall_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class RestorationResultKt {
    public static final RestorationResult restorationResultFromJson(Map<String, ? extends Object> json) {
        Intrinsics.checkNotNullParameter(json, "json");
        Object obj = json.get("result");
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
        String str = (String) obj;
        if (Intrinsics.areEqual(str, "restored")) {
            return new RestorationResult.Restored();
        }
        if (Intrinsics.areEqual(str, "failed")) {
            String str2 = (String) json.get("errorMessage");
            if (str2 == null) {
                str2 = "Unknown error";
            }
            return new RestorationResult.Failed(new Error(str2));
        }
        return new RestorationResult.Failed(new Error("Unknown restoration result"));
    }

    public static final Map<String, Object> restorationResultToJson(RestorationResult result) {
        String message;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result instanceof RestorationResult.Restored) {
            return MapsKt.mapOf(TuplesKt.to("result", "restored"));
        }
        if (!(result instanceof RestorationResult.Failed)) {
            throw new NoWhenBranchMatchedException();
        }
        Pair[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to("result", "failed");
        Throwable error = ((RestorationResult.Failed) result).getError();
        if (error == null || (message = error.getMessage()) == null) {
            message = "Unknown error";
        }
        pairArr[1] = TuplesKt.to("errorMessage", message);
        return MapsKt.mapOf(pairArr);
    }
}
