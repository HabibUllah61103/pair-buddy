package com.superwall.sdk.debug;

import android.net.Uri;
import com.reactcommunity.rndatetimepicker.RNConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SWDebugManagerLogic.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\nB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/debug/SWDebugManagerLogic;", "", "<init>", "()V", "getQueryItemValue", "", "uri", "Landroid/net/Uri;", "name", "Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;", "Parameter", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SWDebugManagerLogic {
    public static final SWDebugManagerLogic INSTANCE = new SWDebugManagerLogic();

    /* JADX INFO: compiled from: SWDebugManagerLogic.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/debug/SWDebugManagerLogic$Parameter;", "", RNConstants.ARG_VALUE, "", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "getValue", "()Ljava/lang/String;", "TOKEN", "PAYWALL_ID", "SUPERWALL_DEBUG", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum Parameter {
        TOKEN("token"),
        PAYWALL_ID("paywall_id"),
        SUPERWALL_DEBUG("superwall_debug");

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());
        private final String value;

        public static EnumEntries<Parameter> getEntries() {
            return $ENTRIES;
        }

        Parameter(String str) {
            this.value = str;
        }

        public final String getValue() {
            return this.value;
        }
    }

    private SWDebugManagerLogic() {
    }

    public final String getQueryItemValue(Uri uri, Parameter name) {
        Intrinsics.checkNotNullParameter(uri, "uri");
        Intrinsics.checkNotNullParameter(name, "name");
        String query = uri.getQuery();
        if (query == null) {
            return null;
        }
        List listSplit$default = StringsKt.split$default((CharSequence) query, new String[]{"&"}, false, 0, 6, (Object) null);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 0, 6, (Object) null);
            arrayList.add(new Pair(listSplit$default2.get(0), 1 < listSplit$default2.size() ? listSplit$default2.get(1) : ""));
        }
        return (String) MapsKt.toMap(arrayList).get(name.getValue());
    }
}
