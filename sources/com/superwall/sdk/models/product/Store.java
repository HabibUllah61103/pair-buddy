package com.superwall.sdk.models.product;

import com.reactcommunity.rndatetimepicker.RNConstants;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.EnumsKt;

/* JADX INFO: compiled from: ProductItem.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0087\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/superwall/sdk/models/product/Store;", "", "<init>", "(Ljava/lang/String;I)V", "PLAY_STORE", "APP_STORE", "STRIPE", "PADDLE", "SUPERWALL", "OTHER", "Companion", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
public enum Store {
    PLAY_STORE,
    APP_STORE,
    STRIPE,
    PADDLE,
    SUPERWALL,
    OTHER;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.models.product.Store$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Store._init_$_anonymous_();
        }
    });

    public static EnumEntries<Store> getEntries() {
        return $ENTRIES;
    }

    /* JADX INFO: compiled from: ProductItem.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/models/product/Store$Companion;", "", "<init>", "()V", "fromValue", "Lcom/superwall/sdk/models/product/Store;", RNConstants.ARG_VALUE, "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) Store.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Store> serializer() {
            return get$cachedSerializer();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final Store fromValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            switch (value.hashCode()) {
                case -1942512790:
                    if (value.equals("PADDLE")) {
                        return Store.PADDLE;
                    }
                    break;
                case -1840194651:
                    if (value.equals("SUPERWALL")) {
                        return Store.SUPERWALL;
                    }
                    break;
                case -1838656435:
                    if (value.equals("STRIPE")) {
                        return Store.STRIPE;
                    }
                    break;
                case -967790602:
                    if (value.equals("PLAY_STORE")) {
                        return Store.PLAY_STORE;
                    }
                    break;
                case 1250303235:
                    if (value.equals("APP_STORE")) {
                        return Store.APP_STORE;
                    }
                    break;
            }
            return Store.OTHER;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return EnumsKt.createAnnotatedEnumSerializer("com.superwall.sdk.models.product.Store", values(), new String[]{"PLAY_STORE", "APP_STORE", "STRIPE", "PADDLE", "SUPERWALL", "OTHER"}, new Annotation[][]{null, null, null, null, null, null}, null);
    }
}
