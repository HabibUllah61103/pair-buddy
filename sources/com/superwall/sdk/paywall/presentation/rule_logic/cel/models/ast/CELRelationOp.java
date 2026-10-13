package com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast;

import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Polymorphic;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: compiled from: CELRelationOp.kt */
/* JADX INFO: loaded from: classes6.dex */
@Polymorphic
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000 \u00172\u00020\u0001:\b\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0007\u0018\u0019\u001a\u001b\u001c\u001d\u001e¨\u0006\u001f"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "LessThan", "LessThanEq", "GreaterThan", "GreaterThanEq", "Equals", "NotEquals", "In", "Companion", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
@SerialName("CELRelationOp")
public abstract class CELRelationOp implements ToExprString {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CELRelationOp._init_$_anonymous_();
        }
    });

    public /* synthetic */ CELRelationOp(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(CELRelationOp self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) CELRelationOp.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<CELRelationOp> serializer() {
            return get$cachedSerializer();
        }
    }

    private CELRelationOp() {
    }

    public /* synthetic */ CELRelationOp(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("CELRelationOp", Reflection.getOrCreateKotlinClass(CELRelationOp.class), new KClass[]{Reflection.getOrCreateKotlinClass(Equals.class), Reflection.getOrCreateKotlinClass(GreaterThan.class), Reflection.getOrCreateKotlinClass(GreaterThanEq.class), Reflection.getOrCreateKotlinClass(In.class), Reflection.getOrCreateKotlinClass(LessThan.class), Reflection.getOrCreateKotlinClass(LessThanEq.class), Reflection.getOrCreateKotlinClass(NotEquals.class)}, new KSerializer[]{new ObjectSerializer("Equals", Equals.INSTANCE, new Annotation[0]), new ObjectSerializer("GreaterThan", GreaterThan.INSTANCE, new Annotation[0]), new ObjectSerializer("GreaterThanEq", GreaterThanEq.INSTANCE, new Annotation[0]), new ObjectSerializer("In", In.INSTANCE, new Annotation[0]), new ObjectSerializer("LessThan", LessThan.INSTANCE, new Annotation[0]), new ObjectSerializer("LessThanEq", LessThanEq.INSTANCE, new Annotation[0]), new ObjectSerializer("NotEquals", NotEquals.INSTANCE, new Annotation[0])}, new Annotation[0]);
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThan;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("LessThan")
    public static final class LessThan extends CELRelationOp {
        public static final LessThan INSTANCE = new LessThan();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$LessThan$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.LessThan._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("LessThan", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<LessThan> serializer() {
            return get$cachedSerializer();
        }

        private LessThan() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "<";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$LessThanEq;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("LessThanEq")
    public static final class LessThanEq extends CELRelationOp {
        public static final LessThanEq INSTANCE = new LessThanEq();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$LessThanEq$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.LessThanEq._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("LessThanEq", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<LessThanEq> serializer() {
            return get$cachedSerializer();
        }

        private LessThanEq() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "<=";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThan;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("GreaterThan")
    public static final class GreaterThan extends CELRelationOp {
        public static final GreaterThan INSTANCE = new GreaterThan();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$GreaterThan$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.GreaterThan._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("GreaterThan", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<GreaterThan> serializer() {
            return get$cachedSerializer();
        }

        private GreaterThan() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return ">";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$GreaterThanEq;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("GreaterThanEq")
    public static final class GreaterThanEq extends CELRelationOp {
        public static final GreaterThanEq INSTANCE = new GreaterThanEq();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$GreaterThanEq$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.GreaterThanEq._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("GreaterThanEq", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<GreaterThanEq> serializer() {
            return get$cachedSerializer();
        }

        private GreaterThanEq() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return ">=";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$Equals;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Equals")
    public static final class Equals extends CELRelationOp {
        public static final Equals INSTANCE = new Equals();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$Equals$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.Equals._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("Equals", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Equals> serializer() {
            return get$cachedSerializer();
        }

        private Equals() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "==";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$NotEquals;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("NotEquals")
    public static final class NotEquals extends CELRelationOp {
        public static final NotEquals INSTANCE = new NotEquals();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$NotEquals$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.NotEquals._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("NotEquals", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<NotEquals> serializer() {
            return get$cachedSerializer();
        }

        private NotEquals() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "!=";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp$In;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELRelationOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("In")
    public static final class In extends CELRelationOp {
        public static final In INSTANCE = new In();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELRelationOp$In$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELRelationOp.In._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("In", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<In> serializer() {
            return get$cachedSerializer();
        }

        private In() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "in";
        }
    }
}
