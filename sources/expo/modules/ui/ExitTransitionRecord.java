package expo.modules.ui;

import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AnimatedVisibilityView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010\u0011JH\u0010\u001e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u001fJ\u0013\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010#HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020'HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u000f\u0010\f\u001a\u0004\b\u0010\u0010\u0011R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0013\u0010\f\u001a\u0004\b\u0014\u0010\u0011R \u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0015\u0010\f\u001a\u0004\b\u0016\u0010\u0011R \u0010\b\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0010\n\u0002\u0010\u0012\u0012\u0004\b\u0017\u0010\f\u001a\u0004\b\u0018\u0010\u0011¨\u0006("}, d2 = {"Lexpo/modules/ui/ExitTransitionRecord;", "Lexpo/modules/kotlin/records/Record;", "type", "Lexpo/modules/ui/ExitTransitionType;", "targetAlpha", "", "targetOffsetX", "targetOffsetY", "targetScale", "<init>", "(Lexpo/modules/ui/ExitTransitionType;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)V", "getType$annotations", "()V", "getType", "()Lexpo/modules/ui/ExitTransitionType;", "getTargetAlpha$annotations", "getTargetAlpha", "()Ljava/lang/Float;", "Ljava/lang/Float;", "getTargetOffsetX$annotations", "getTargetOffsetX", "getTargetOffsetY$annotations", "getTargetOffsetY", "getTargetScale$annotations", "getTargetScale", "component1", "component2", "component3", "component4", "component5", "copy", "(Lexpo/modules/ui/ExitTransitionType;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;)Lexpo/modules/ui/ExitTransitionRecord;", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class ExitTransitionRecord implements Record {
    public static final int $stable = 0;
    private final Float targetAlpha;
    private final Float targetOffsetX;
    private final Float targetOffsetY;
    private final Float targetScale;
    private final ExitTransitionType type;

    public ExitTransitionRecord() {
        this(null, null, null, null, null, 31, null);
    }

    public static /* synthetic */ ExitTransitionRecord copy$default(ExitTransitionRecord exitTransitionRecord, ExitTransitionType exitTransitionType, Float f, Float f2, Float f3, Float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            exitTransitionType = exitTransitionRecord.type;
        }
        if ((i & 2) != 0) {
            f = exitTransitionRecord.targetAlpha;
        }
        if ((i & 4) != 0) {
            f2 = exitTransitionRecord.targetOffsetX;
        }
        if ((i & 8) != 0) {
            f3 = exitTransitionRecord.targetOffsetY;
        }
        if ((i & 16) != 0) {
            f4 = exitTransitionRecord.targetScale;
        }
        Float f5 = f4;
        Float f6 = f2;
        return exitTransitionRecord.copy(exitTransitionType, f, f6, f3, f5);
    }

    @Field
    public static /* synthetic */ void getTargetAlpha$annotations() {
    }

    @Field
    public static /* synthetic */ void getTargetOffsetX$annotations() {
    }

    @Field
    public static /* synthetic */ void getTargetOffsetY$annotations() {
    }

    @Field
    public static /* synthetic */ void getTargetScale$annotations() {
    }

    @Field
    public static /* synthetic */ void getType$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ExitTransitionType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Float getTargetAlpha() {
        return this.targetAlpha;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Float getTargetOffsetX() {
        return this.targetOffsetX;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Float getTargetOffsetY() {
        return this.targetOffsetY;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Float getTargetScale() {
        return this.targetScale;
    }

    public final ExitTransitionRecord copy(ExitTransitionType type, Float targetAlpha, Float targetOffsetX, Float targetOffsetY, Float targetScale) {
        Intrinsics.checkNotNullParameter(type, "type");
        return new ExitTransitionRecord(type, targetAlpha, targetOffsetX, targetOffsetY, targetScale);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ExitTransitionRecord)) {
            return false;
        }
        ExitTransitionRecord exitTransitionRecord = (ExitTransitionRecord) other;
        return this.type == exitTransitionRecord.type && Intrinsics.areEqual((Object) this.targetAlpha, (Object) exitTransitionRecord.targetAlpha) && Intrinsics.areEqual((Object) this.targetOffsetX, (Object) exitTransitionRecord.targetOffsetX) && Intrinsics.areEqual((Object) this.targetOffsetY, (Object) exitTransitionRecord.targetOffsetY) && Intrinsics.areEqual((Object) this.targetScale, (Object) exitTransitionRecord.targetScale);
    }

    public int hashCode() {
        int iHashCode = this.type.hashCode() * 31;
        Float f = this.targetAlpha;
        int iHashCode2 = (iHashCode + (f == null ? 0 : f.hashCode())) * 31;
        Float f2 = this.targetOffsetX;
        int iHashCode3 = (iHashCode2 + (f2 == null ? 0 : f2.hashCode())) * 31;
        Float f3 = this.targetOffsetY;
        int iHashCode4 = (iHashCode3 + (f3 == null ? 0 : f3.hashCode())) * 31;
        Float f4 = this.targetScale;
        return iHashCode4 + (f4 != null ? f4.hashCode() : 0);
    }

    public String toString() {
        return "ExitTransitionRecord(type=" + this.type + ", targetAlpha=" + this.targetAlpha + ", targetOffsetX=" + this.targetOffsetX + ", targetOffsetY=" + this.targetOffsetY + ", targetScale=" + this.targetScale + ")";
    }

    public ExitTransitionRecord(ExitTransitionType type, Float f, Float f2, Float f3, Float f4) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.targetAlpha = f;
        this.targetOffsetX = f2;
        this.targetOffsetY = f3;
        this.targetScale = f4;
    }

    public /* synthetic */ ExitTransitionRecord(ExitTransitionType exitTransitionType, Float f, Float f2, Float f3, Float f4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? ExitTransitionType.FADE_OUT : exitTransitionType, (i & 2) != 0 ? null : f, (i & 4) != 0 ? null : f2, (i & 8) != 0 ? null : f3, (i & 16) != 0 ? null : f4);
    }

    public final ExitTransitionType getType() {
        return this.type;
    }

    public final Float getTargetAlpha() {
        return this.targetAlpha;
    }

    public final Float getTargetOffsetX() {
        return this.targetOffsetX;
    }

    public final Float getTargetOffsetY() {
        return this.targetOffsetY;
    }

    public final Float getTargetScale() {
        return this.targetScale;
    }
}
