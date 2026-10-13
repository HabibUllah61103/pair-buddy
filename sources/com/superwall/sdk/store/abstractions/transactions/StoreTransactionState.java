package com.superwall.sdk.store.abstractions.transactions;

import com.google.firebase.messaging.Constants;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.ObjectSerializer;

/* JADX INFO: compiled from: StoreTransactionType.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \t2\u00020\u0001:\u0006\u0004\u0005\u0006\u0007\b\tB\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0005\n\u000b\f\r\u000e¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "", "<init>", "()V", "Purchasing", "Purchased", "Failed", "Restored", "Deferred", "Companion", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Deferred;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable(with = StoreTransactionStateSerializer.class)
public abstract class StoreTransactionState {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    public /* synthetic */ StoreTransactionState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private StoreTransactionState() {
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchasing;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Purchasing extends StoreTransactionState {
        public static final Purchasing INSTANCE = new Purchasing();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransactionState$Purchasing$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StoreTransactionState.Purchasing._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState.Purchasing", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Purchasing> serializer() {
            return get$cachedSerializer();
        }

        private Purchasing() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Purchased;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Purchased extends StoreTransactionState {
        public static final Purchased INSTANCE = new Purchased();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransactionState$Purchased$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StoreTransactionState.Purchased._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState.Purchased", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Purchased> serializer() {
            return get$cachedSerializer();
        }

        private Purchased() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Failed;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Failed extends StoreTransactionState {
        public static final Failed INSTANCE = new Failed();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransactionState$Failed$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StoreTransactionState.Failed._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState.Failed", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Failed> serializer() {
            return get$cachedSerializer();
        }

        private Failed() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Restored;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Restored extends StoreTransactionState {
        public static final Restored INSTANCE = new Restored();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransactionState$Restored$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StoreTransactionState.Restored._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState.Restored", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Restored> serializer() {
            return get$cachedSerializer();
        }

        private Restored() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00000\u0005¨\u0006\u0006"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Deferred;", "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    public static final class Deferred extends StoreTransactionState {
        public static final Deferred INSTANCE = new Deferred();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.store.abstractions.transactions.StoreTransactionState$Deferred$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return StoreTransactionState.Deferred._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("com.superwall.sdk.store.abstractions.transactions.StoreTransactionState.Deferred", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Deferred> serializer() {
            return get$cachedSerializer();
        }

        private Deferred() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: StoreTransactionType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t¨\u0006\n"}, d2 = {"Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState$Companion;", "", "<init>", "()V", Constants.MessagePayloadKeys.FROM, "Lcom/superwall/sdk/store/abstractions/transactions/StoreTransactionState;", "purchaseResult", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<StoreTransactionState> serializer() {
            return StoreTransactionStateSerializer.INSTANCE;
        }

        public final StoreTransactionState from(int purchaseResult) {
            if (purchaseResult == 0) {
                return Purchased.INSTANCE;
            }
            if (purchaseResult == 1) {
                return Purchasing.INSTANCE;
            }
            if (purchaseResult == 7) {
                return Restored.INSTANCE;
            }
            return Failed.INSTANCE;
        }
    }
}
