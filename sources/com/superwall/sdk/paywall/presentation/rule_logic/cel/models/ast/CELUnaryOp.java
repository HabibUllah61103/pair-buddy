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
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b1\u0018\u0000 \u00142\u00020\u0001:\u0005\u0010\u0011\u0012\u0013\u0014B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003B\u001b\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u0002\u0010\bJ \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u0082\u0001\u0004\u0015\u0016\u0017\u0018¨\u0006\u0019"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/ToExprString;", "<init>", "()V", "seen0", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "Not", "DoubleNot", "Minus", "DoubleMinus", "Companion", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
@Serializable
@SerialName("CELUnaryOp")
public abstract class CELUnaryOp implements ToExprString {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELUnaryOp$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return CELUnaryOp._init_$_anonymous_();
        }
    });

    public /* synthetic */ CELUnaryOp(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self(CELUnaryOp self, CompositeEncoder output, SerialDescriptor serialDesc) {
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¨\u0006\u0007"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Companion;", "", "<init>", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return (KSerializer) CELUnaryOp.$cachedSerializer$delegate.getValue();
        }

        public final KSerializer<CELUnaryOp> serializer() {
            return get$cachedSerializer();
        }
    }

    private CELUnaryOp() {
    }

    public /* synthetic */ CELUnaryOp(int i, SerializationConstructorMarker serializationConstructorMarker) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ KSerializer _init_$_anonymous_() {
        return new SealedClassSerializer("CELUnaryOp", Reflection.getOrCreateKotlinClass(CELUnaryOp.class), new KClass[]{Reflection.getOrCreateKotlinClass(DoubleMinus.class), Reflection.getOrCreateKotlinClass(DoubleNot.class), Reflection.getOrCreateKotlinClass(Minus.class), Reflection.getOrCreateKotlinClass(Not.class)}, new KSerializer[]{new ObjectSerializer("DoubleMinus", DoubleMinus.INSTANCE, new Annotation[0]), new ObjectSerializer("DoubleNot", DoubleNot.INSTANCE, new Annotation[0]), new ObjectSerializer("Minus", Minus.INSTANCE, new Annotation[0]), new ObjectSerializer("Not", Not.INSTANCE, new Annotation[0])}, new Annotation[0]);
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Not;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Not")
    public static final class Not extends CELUnaryOp {
        public static final Not INSTANCE = new Not();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELUnaryOp$Not$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELUnaryOp.Not._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("Not", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Not> serializer() {
            return get$cachedSerializer();
        }

        private Not() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "!";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleNot;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("DoubleNot")
    public static final class DoubleNot extends CELUnaryOp {
        public static final DoubleNot INSTANCE = new DoubleNot();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELUnaryOp$DoubleNot$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELUnaryOp.DoubleNot._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("DoubleNot", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<DoubleNot> serializer() {
            return get$cachedSerializer();
        }

        private DoubleNot() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "!!";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$Minus;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("Minus")
    public static final class Minus extends CELUnaryOp {
        public static final Minus INSTANCE = new Minus();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELUnaryOp$Minus$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELUnaryOp.Minus._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("Minus", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<Minus> serializer() {
            return get$cachedSerializer();
        }

        private Minus() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "-";
        }
    }

    /* JADX INFO: compiled from: CELRelationOp.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0016J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00000\u0007¨\u0006\b"}, d2 = {"Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp$DoubleMinus;", "Lcom/superwall/sdk/paywall/presentation/rule_logic/cel/models/ast/CELUnaryOp;", "<init>", "()V", "toExprString", "", "serializer", "Lkotlinx/serialization/KSerializer;", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @Serializable
    @SerialName("DoubleMinus")
    public static final class DoubleMinus extends CELUnaryOp {
        public static final DoubleMinus INSTANCE = new DoubleMinus();
        private static final /* synthetic */ Lazy<KSerializer<Object>> $cachedSerializer$delegate = LazyKt.lazy(LazyThreadSafetyMode.PUBLICATION, new Function0() { // from class: com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.CELUnaryOp$DoubleMinus$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CELUnaryOp.DoubleMinus._init_$_anonymous_();
            }
        });

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ KSerializer _init_$_anonymous_() {
            return new ObjectSerializer("DoubleMinus", INSTANCE, new Annotation[0]);
        }

        private final /* synthetic */ KSerializer get$cachedSerializer() {
            return $cachedSerializer$delegate.getValue();
        }

        public final KSerializer<DoubleMinus> serializer() {
            return get$cachedSerializer();
        }

        private DoubleMinus() {
            super(null);
        }

        @Override // com.superwall.sdk.paywall.presentation.rule_logic.cel.models.ast.ToExprString
        public String toExprString() {
            return "--";
        }
    }
}
