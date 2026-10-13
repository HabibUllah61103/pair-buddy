package expo.modules.ui.convertibles;

import android.graphics.Color;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import expo.modules.ui.BuiltinShapeRecord;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GraphicsLayerParams.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0081\b\u0018\u00002\u00020\u0001B_\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010'\u001a\u00020\u0003HÆ\u0003J\t\u0010(\u001a\u00020\u0003HÆ\u0003J\t\u0010)\u001a\u00020\u0003HÆ\u0003J\t\u0010*\u001a\u00020\u0007HÆ\u0003J\u000b\u0010+\u001a\u0004\u0018\u00010\tHÆ\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010-\u001a\u0004\u0018\u00010\u000bHÆ\u0003J\u000b\u0010.\u001a\u0004\u0018\u00010\u000eHÆ\u0003Ja\u0010/\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eHÆ\u0001J\u0013\u00100\u001a\u00020\u00072\b\u00101\u001a\u0004\u0018\u000102HÖ\u0003J\t\u00103\u001a\u000204HÖ\u0001J\t\u00105\u001a\u000206HÖ\u0001R\u001c\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0015\u0010\u0012\u001a\u0004\b\u0016\u0010\u0014R\u001c\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0014R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0019\u0010\u0012\u001a\u0004\b\u001a\u0010\u001bR\u001e\u0010\b\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001c\u0010\u0012\u001a\u0004\b\u001d\u0010\u001eR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u001f\u0010\u0012\u001a\u0004\b \u0010!R\u001e\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\"\u0010\u0012\u001a\u0004\b#\u0010!R\u001e\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b$\u0010\u0012\u001a\u0004\b%\u0010&¨\u00067"}, d2 = {"Lexpo/modules/ui/convertibles/GraphicsLayerParams;", "Lexpo/modules/kotlin/records/Record;", "cameraDistance", "", "transformOriginX", "transformOriginY", "clip", "", "shape", "Lexpo/modules/ui/BuiltinShapeRecord;", "ambientShadowColor", "Landroid/graphics/Color;", "spotShadowColor", "compositingStrategy", "Lexpo/modules/ui/convertibles/CompositingStrategyType;", "<init>", "(FFFZLexpo/modules/ui/BuiltinShapeRecord;Landroid/graphics/Color;Landroid/graphics/Color;Lexpo/modules/ui/convertibles/CompositingStrategyType;)V", "getCameraDistance$annotations", "()V", "getCameraDistance", "()F", "getTransformOriginX$annotations", "getTransformOriginX", "getTransformOriginY$annotations", "getTransformOriginY", "getClip$annotations", "getClip", "()Z", "getShape$annotations", "getShape", "()Lexpo/modules/ui/BuiltinShapeRecord;", "getAmbientShadowColor$annotations", "getAmbientShadowColor", "()Landroid/graphics/Color;", "getSpotShadowColor$annotations", "getSpotShadowColor", "getCompositingStrategy$annotations", "getCompositingStrategy", "()Lexpo/modules/ui/convertibles/CompositingStrategyType;", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class GraphicsLayerParams implements Record {
    public static final int $stable = 8;
    private final Color ambientShadowColor;
    private final float cameraDistance;
    private final boolean clip;
    private final CompositingStrategyType compositingStrategy;
    private final BuiltinShapeRecord shape;
    private final Color spotShadowColor;
    private final float transformOriginX;
    private final float transformOriginY;

    public GraphicsLayerParams() {
        this(0.0f, 0.0f, 0.0f, false, null, null, null, null, 255, null);
    }

    public static /* synthetic */ GraphicsLayerParams copy$default(GraphicsLayerParams graphicsLayerParams, float f, float f2, float f3, boolean z, BuiltinShapeRecord builtinShapeRecord, Color color, Color color2, CompositingStrategyType compositingStrategyType, int i, Object obj) {
        if ((i & 1) != 0) {
            f = graphicsLayerParams.cameraDistance;
        }
        if ((i & 2) != 0) {
            f2 = graphicsLayerParams.transformOriginX;
        }
        if ((i & 4) != 0) {
            f3 = graphicsLayerParams.transformOriginY;
        }
        if ((i & 8) != 0) {
            z = graphicsLayerParams.clip;
        }
        if ((i & 16) != 0) {
            builtinShapeRecord = graphicsLayerParams.shape;
        }
        if ((i & 32) != 0) {
            color = graphicsLayerParams.ambientShadowColor;
        }
        if ((i & 64) != 0) {
            color2 = graphicsLayerParams.spotShadowColor;
        }
        if ((i & 128) != 0) {
            compositingStrategyType = graphicsLayerParams.compositingStrategy;
        }
        Color color3 = color2;
        CompositingStrategyType compositingStrategyType2 = compositingStrategyType;
        BuiltinShapeRecord builtinShapeRecord2 = builtinShapeRecord;
        Color color4 = color;
        return graphicsLayerParams.copy(f, f2, f3, z, builtinShapeRecord2, color4, color3, compositingStrategyType2);
    }

    @Field
    public static /* synthetic */ void getAmbientShadowColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getCameraDistance$annotations() {
    }

    @Field
    public static /* synthetic */ void getClip$annotations() {
    }

    @Field
    public static /* synthetic */ void getCompositingStrategy$annotations() {
    }

    @Field
    public static /* synthetic */ void getShape$annotations() {
    }

    @Field
    public static /* synthetic */ void getSpotShadowColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getTransformOriginX$annotations() {
    }

    @Field
    public static /* synthetic */ void getTransformOriginY$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final float getCameraDistance() {
        return this.cameraDistance;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final float getTransformOriginX() {
        return this.transformOriginX;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final float getTransformOriginY() {
        return this.transformOriginY;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final boolean getClip() {
        return this.clip;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final BuiltinShapeRecord getShape() {
        return this.shape;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Color getAmbientShadowColor() {
        return this.ambientShadowColor;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Color getSpotShadowColor() {
        return this.spotShadowColor;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final CompositingStrategyType getCompositingStrategy() {
        return this.compositingStrategy;
    }

    public final GraphicsLayerParams copy(float cameraDistance, float transformOriginX, float transformOriginY, boolean clip, BuiltinShapeRecord shape, Color ambientShadowColor, Color spotShadowColor, CompositingStrategyType compositingStrategy) {
        return new GraphicsLayerParams(cameraDistance, transformOriginX, transformOriginY, clip, shape, ambientShadowColor, spotShadowColor, compositingStrategy);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof GraphicsLayerParams)) {
            return false;
        }
        GraphicsLayerParams graphicsLayerParams = (GraphicsLayerParams) other;
        return Float.compare(this.cameraDistance, graphicsLayerParams.cameraDistance) == 0 && Float.compare(this.transformOriginX, graphicsLayerParams.transformOriginX) == 0 && Float.compare(this.transformOriginY, graphicsLayerParams.transformOriginY) == 0 && this.clip == graphicsLayerParams.clip && Intrinsics.areEqual(this.shape, graphicsLayerParams.shape) && Intrinsics.areEqual(this.ambientShadowColor, graphicsLayerParams.ambientShadowColor) && Intrinsics.areEqual(this.spotShadowColor, graphicsLayerParams.spotShadowColor) && this.compositingStrategy == graphicsLayerParams.compositingStrategy;
    }

    public int hashCode() {
        int iHashCode = ((((((Float.hashCode(this.cameraDistance) * 31) + Float.hashCode(this.transformOriginX)) * 31) + Float.hashCode(this.transformOriginY)) * 31) + Boolean.hashCode(this.clip)) * 31;
        BuiltinShapeRecord builtinShapeRecord = this.shape;
        int iHashCode2 = (iHashCode + (builtinShapeRecord == null ? 0 : builtinShapeRecord.hashCode())) * 31;
        Color color = this.ambientShadowColor;
        int iHashCode3 = (iHashCode2 + (color == null ? 0 : color.hashCode())) * 31;
        Color color2 = this.spotShadowColor;
        int iHashCode4 = (iHashCode3 + (color2 == null ? 0 : color2.hashCode())) * 31;
        CompositingStrategyType compositingStrategyType = this.compositingStrategy;
        return iHashCode4 + (compositingStrategyType != null ? compositingStrategyType.hashCode() : 0);
    }

    public String toString() {
        return "GraphicsLayerParams(cameraDistance=" + this.cameraDistance + ", transformOriginX=" + this.transformOriginX + ", transformOriginY=" + this.transformOriginY + ", clip=" + this.clip + ", shape=" + this.shape + ", ambientShadowColor=" + this.ambientShadowColor + ", spotShadowColor=" + this.spotShadowColor + ", compositingStrategy=" + this.compositingStrategy + ")";
    }

    public GraphicsLayerParams(float f, float f2, float f3, boolean z, BuiltinShapeRecord builtinShapeRecord, Color color, Color color2, CompositingStrategyType compositingStrategyType) {
        this.cameraDistance = f;
        this.transformOriginX = f2;
        this.transformOriginY = f3;
        this.clip = z;
        this.shape = builtinShapeRecord;
        this.ambientShadowColor = color;
        this.spotShadowColor = color2;
        this.compositingStrategy = compositingStrategyType;
    }

    public /* synthetic */ GraphicsLayerParams(float f, float f2, float f3, boolean z, BuiltinShapeRecord builtinShapeRecord, Color color, Color color2, CompositingStrategyType compositingStrategyType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 8.0f : f, (i & 2) != 0 ? 0.5f : f2, (i & 4) != 0 ? 0.5f : f3, (i & 8) != 0 ? false : z, (i & 16) != 0 ? null : builtinShapeRecord, (i & 32) != 0 ? null : color, (i & 64) != 0 ? null : color2, (i & 128) != 0 ? null : compositingStrategyType);
    }

    public final float getCameraDistance() {
        return this.cameraDistance;
    }

    public final float getTransformOriginX() {
        return this.transformOriginX;
    }

    public final float getTransformOriginY() {
        return this.transformOriginY;
    }

    public final boolean getClip() {
        return this.clip;
    }

    public final BuiltinShapeRecord getShape() {
        return this.shape;
    }

    public final Color getAmbientShadowColor() {
        return this.ambientShadowColor;
    }

    public final Color getSpotShadowColor() {
        return this.spotShadowColor;
    }

    public final CompositingStrategyType getCompositingStrategy() {
        return this.compositingStrategy;
    }
}
