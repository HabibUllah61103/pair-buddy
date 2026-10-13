package expo.modules.ui;

import android.graphics.Color;
import androidx.media3.common.C;
import expo.modules.kotlin.records.Field;
import expo.modules.kotlin.records.Record;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TextFieldView.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000+\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0003\b\u00ad\u0001\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087\b\u0018\u00002\u00020\u0001Bÿ\u0003\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b-\u0010.J\f\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0092\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010 \u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¡\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¢\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010£\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¤\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¥\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¦\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010§\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¨\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010©\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010ª\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010«\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010¬\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010\u00ad\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\f\u0010®\u0001\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0082\u0004\u0010¯\u0001\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010 \u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010!\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010$\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010%\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010&\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010'\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010(\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010)\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010*\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010+\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010,\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0017\u0010°\u0001\u001a\u00030±\u00012\n\u0010²\u0001\u001a\u0005\u0018\u00010³\u0001HÖ\u0003J\u000b\u0010´\u0001\u001a\u00030µ\u0001HÖ\u0001J\u000b\u0010¶\u0001\u001a\u00030·\u0001HÖ\u0001R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b/\u00100\u001a\u0004\b1\u00102R\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b3\u00100\u001a\u0004\b4\u00102R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b5\u00100\u001a\u0004\b6\u00102R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b7\u00100\u001a\u0004\b8\u00102R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b9\u00100\u001a\u0004\b:\u00102R\u001e\u0010\b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b;\u00100\u001a\u0004\b<\u00102R\u001e\u0010\t\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b=\u00100\u001a\u0004\b>\u00102R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b?\u00100\u001a\u0004\b@\u00102R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bA\u00100\u001a\u0004\bB\u00102R\u001e\u0010\f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bC\u00100\u001a\u0004\bD\u00102R\u001e\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bE\u00100\u001a\u0004\bF\u00102R\u001e\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bG\u00100\u001a\u0004\bH\u00102R\u001e\u0010\u000f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bI\u00100\u001a\u0004\bJ\u00102R\u001e\u0010\u0010\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bK\u00100\u001a\u0004\bL\u00102R\u001e\u0010\u0011\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bM\u00100\u001a\u0004\bN\u00102R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bO\u00100\u001a\u0004\bP\u00102R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bQ\u00100\u001a\u0004\bR\u00102R\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bS\u00100\u001a\u0004\bT\u00102R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bU\u00100\u001a\u0004\bV\u00102R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bW\u00100\u001a\u0004\bX\u00102R\u001e\u0010\u0017\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bY\u00100\u001a\u0004\bZ\u00102R\u001e\u0010\u0018\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b[\u00100\u001a\u0004\b\\\u00102R\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b]\u00100\u001a\u0004\b^\u00102R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b_\u00100\u001a\u0004\b`\u00102R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\ba\u00100\u001a\u0004\bb\u00102R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bc\u00100\u001a\u0004\bd\u00102R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\be\u00100\u001a\u0004\bf\u00102R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bg\u00100\u001a\u0004\bh\u00102R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bi\u00100\u001a\u0004\bj\u00102R\u001e\u0010 \u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bk\u00100\u001a\u0004\bl\u00102R\u001e\u0010!\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bm\u00100\u001a\u0004\bn\u00102R\u001e\u0010\"\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bo\u00100\u001a\u0004\bp\u00102R\u001e\u0010#\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bq\u00100\u001a\u0004\br\u00102R\u001e\u0010$\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bs\u00100\u001a\u0004\bt\u00102R\u001e\u0010%\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bu\u00100\u001a\u0004\bv\u00102R\u001e\u0010&\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\bw\u00100\u001a\u0004\bx\u00102R\u001e\u0010'\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\by\u00100\u001a\u0004\bz\u00102R\u001e\u0010(\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b{\u00100\u001a\u0004\b|\u00102R\u001e\u0010)\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b}\u00100\u001a\u0004\b~\u00102R\u001f\u0010*\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u000f\n\u0000\u0012\u0004\b\u007f\u00100\u001a\u0005\b\u0080\u0001\u00102R \u0010+\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0081\u0001\u00100\u001a\u0005\b\u0082\u0001\u00102R \u0010,\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\u0010\n\u0000\u0012\u0005\b\u0083\u0001\u00100\u001a\u0005\b\u0084\u0001\u00102¨\u0006¸\u0001"}, d2 = {"Lexpo/modules/ui/TextFieldColorsRecord;", "Lexpo/modules/kotlin/records/Record;", "focusedTextColor", "Landroid/graphics/Color;", "unfocusedTextColor", "disabledTextColor", "errorTextColor", "focusedContainerColor", "unfocusedContainerColor", "disabledContainerColor", "errorContainerColor", "cursorColor", "errorCursorColor", "focusedIndicatorColor", "unfocusedIndicatorColor", "disabledIndicatorColor", "errorIndicatorColor", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "errorLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "errorTrailingIconColor", "focusedLabelColor", "unfocusedLabelColor", "disabledLabelColor", "errorLabelColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "disabledPlaceholderColor", "errorPlaceholderColor", "focusedSupportingTextColor", "unfocusedSupportingTextColor", "disabledSupportingTextColor", "errorSupportingTextColor", "focusedPrefixColor", "unfocusedPrefixColor", "disabledPrefixColor", "errorPrefixColor", "focusedSuffixColor", "unfocusedSuffixColor", "disabledSuffixColor", "errorSuffixColor", "<init>", "(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;)V", "getFocusedTextColor$annotations", "()V", "getFocusedTextColor", "()Landroid/graphics/Color;", "getUnfocusedTextColor$annotations", "getUnfocusedTextColor", "getDisabledTextColor$annotations", "getDisabledTextColor", "getErrorTextColor$annotations", "getErrorTextColor", "getFocusedContainerColor$annotations", "getFocusedContainerColor", "getUnfocusedContainerColor$annotations", "getUnfocusedContainerColor", "getDisabledContainerColor$annotations", "getDisabledContainerColor", "getErrorContainerColor$annotations", "getErrorContainerColor", "getCursorColor$annotations", "getCursorColor", "getErrorCursorColor$annotations", "getErrorCursorColor", "getFocusedIndicatorColor$annotations", "getFocusedIndicatorColor", "getUnfocusedIndicatorColor$annotations", "getUnfocusedIndicatorColor", "getDisabledIndicatorColor$annotations", "getDisabledIndicatorColor", "getErrorIndicatorColor$annotations", "getErrorIndicatorColor", "getFocusedLeadingIconColor$annotations", "getFocusedLeadingIconColor", "getUnfocusedLeadingIconColor$annotations", "getUnfocusedLeadingIconColor", "getDisabledLeadingIconColor$annotations", "getDisabledLeadingIconColor", "getErrorLeadingIconColor$annotations", "getErrorLeadingIconColor", "getFocusedTrailingIconColor$annotations", "getFocusedTrailingIconColor", "getUnfocusedTrailingIconColor$annotations", "getUnfocusedTrailingIconColor", "getDisabledTrailingIconColor$annotations", "getDisabledTrailingIconColor", "getErrorTrailingIconColor$annotations", "getErrorTrailingIconColor", "getFocusedLabelColor$annotations", "getFocusedLabelColor", "getUnfocusedLabelColor$annotations", "getUnfocusedLabelColor", "getDisabledLabelColor$annotations", "getDisabledLabelColor", "getErrorLabelColor$annotations", "getErrorLabelColor", "getFocusedPlaceholderColor$annotations", "getFocusedPlaceholderColor", "getUnfocusedPlaceholderColor$annotations", "getUnfocusedPlaceholderColor", "getDisabledPlaceholderColor$annotations", "getDisabledPlaceholderColor", "getErrorPlaceholderColor$annotations", "getErrorPlaceholderColor", "getFocusedSupportingTextColor$annotations", "getFocusedSupportingTextColor", "getUnfocusedSupportingTextColor$annotations", "getUnfocusedSupportingTextColor", "getDisabledSupportingTextColor$annotations", "getDisabledSupportingTextColor", "getErrorSupportingTextColor$annotations", "getErrorSupportingTextColor", "getFocusedPrefixColor$annotations", "getFocusedPrefixColor", "getUnfocusedPrefixColor$annotations", "getUnfocusedPrefixColor", "getDisabledPrefixColor$annotations", "getDisabledPrefixColor", "getErrorPrefixColor$annotations", "getErrorPrefixColor", "getFocusedSuffixColor$annotations", "getFocusedSuffixColor", "getUnfocusedSuffixColor$annotations", "getUnfocusedSuffixColor", "getDisabledSuffixColor$annotations", "getDisabledSuffixColor", "getErrorSuffixColor$annotations", "getErrorSuffixColor", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component20", "component21", "component22", "component23", "component24", "component25", "component26", "component27", "component28", "component29", "component30", "component31", "component32", "component33", "component34", "component35", "component36", "component37", "component38", "component39", "component40", "component41", "component42", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "expo-ui_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class TextFieldColorsRecord implements Record {
    public static final int $stable = 8;
    private final Color cursorColor;
    private final Color disabledContainerColor;
    private final Color disabledIndicatorColor;
    private final Color disabledLabelColor;
    private final Color disabledLeadingIconColor;
    private final Color disabledPlaceholderColor;
    private final Color disabledPrefixColor;
    private final Color disabledSuffixColor;
    private final Color disabledSupportingTextColor;
    private final Color disabledTextColor;
    private final Color disabledTrailingIconColor;
    private final Color errorContainerColor;
    private final Color errorCursorColor;
    private final Color errorIndicatorColor;
    private final Color errorLabelColor;
    private final Color errorLeadingIconColor;
    private final Color errorPlaceholderColor;
    private final Color errorPrefixColor;
    private final Color errorSuffixColor;
    private final Color errorSupportingTextColor;
    private final Color errorTextColor;
    private final Color errorTrailingIconColor;
    private final Color focusedContainerColor;
    private final Color focusedIndicatorColor;
    private final Color focusedLabelColor;
    private final Color focusedLeadingIconColor;
    private final Color focusedPlaceholderColor;
    private final Color focusedPrefixColor;
    private final Color focusedSuffixColor;
    private final Color focusedSupportingTextColor;
    private final Color focusedTextColor;
    private final Color focusedTrailingIconColor;
    private final Color unfocusedContainerColor;
    private final Color unfocusedIndicatorColor;
    private final Color unfocusedLabelColor;
    private final Color unfocusedLeadingIconColor;
    private final Color unfocusedPlaceholderColor;
    private final Color unfocusedPrefixColor;
    private final Color unfocusedSuffixColor;
    private final Color unfocusedSupportingTextColor;
    private final Color unfocusedTextColor;
    private final Color unfocusedTrailingIconColor;

    public TextFieldColorsRecord() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -1, 1023, null);
    }

    public static /* synthetic */ TextFieldColorsRecord copy$default(TextFieldColorsRecord textFieldColorsRecord, Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, Color color17, Color color18, Color color19, Color color20, Color color21, Color color22, Color color23, Color color24, Color color25, Color color26, Color color27, Color color28, Color color29, Color color30, Color color31, Color color32, Color color33, Color color34, Color color35, Color color36, Color color37, Color color38, Color color39, Color color40, Color color41, Color color42, int i, int i2, Object obj) {
        Color color43 = (i & 1) != 0 ? textFieldColorsRecord.focusedTextColor : color;
        return textFieldColorsRecord.copy(color43, (i & 2) != 0 ? textFieldColorsRecord.unfocusedTextColor : color2, (i & 4) != 0 ? textFieldColorsRecord.disabledTextColor : color3, (i & 8) != 0 ? textFieldColorsRecord.errorTextColor : color4, (i & 16) != 0 ? textFieldColorsRecord.focusedContainerColor : color5, (i & 32) != 0 ? textFieldColorsRecord.unfocusedContainerColor : color6, (i & 64) != 0 ? textFieldColorsRecord.disabledContainerColor : color7, (i & 128) != 0 ? textFieldColorsRecord.errorContainerColor : color8, (i & 256) != 0 ? textFieldColorsRecord.cursorColor : color9, (i & 512) != 0 ? textFieldColorsRecord.errorCursorColor : color10, (i & 1024) != 0 ? textFieldColorsRecord.focusedIndicatorColor : color11, (i & 2048) != 0 ? textFieldColorsRecord.unfocusedIndicatorColor : color12, (i & 4096) != 0 ? textFieldColorsRecord.disabledIndicatorColor : color13, (i & 8192) != 0 ? textFieldColorsRecord.errorIndicatorColor : color14, (i & 16384) != 0 ? textFieldColorsRecord.focusedLeadingIconColor : color15, (i & 32768) != 0 ? textFieldColorsRecord.unfocusedLeadingIconColor : color16, (i & 65536) != 0 ? textFieldColorsRecord.disabledLeadingIconColor : color17, (i & 131072) != 0 ? textFieldColorsRecord.errorLeadingIconColor : color18, (i & 262144) != 0 ? textFieldColorsRecord.focusedTrailingIconColor : color19, (i & 524288) != 0 ? textFieldColorsRecord.unfocusedTrailingIconColor : color20, (i & 1048576) != 0 ? textFieldColorsRecord.disabledTrailingIconColor : color21, (i & 2097152) != 0 ? textFieldColorsRecord.errorTrailingIconColor : color22, (i & 4194304) != 0 ? textFieldColorsRecord.focusedLabelColor : color23, (i & 8388608) != 0 ? textFieldColorsRecord.unfocusedLabelColor : color24, (i & 16777216) != 0 ? textFieldColorsRecord.disabledLabelColor : color25, (i & 33554432) != 0 ? textFieldColorsRecord.errorLabelColor : color26, (i & 67108864) != 0 ? textFieldColorsRecord.focusedPlaceholderColor : color27, (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? textFieldColorsRecord.unfocusedPlaceholderColor : color28, (i & 268435456) != 0 ? textFieldColorsRecord.disabledPlaceholderColor : color29, (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? textFieldColorsRecord.errorPlaceholderColor : color30, (i & 1073741824) != 0 ? textFieldColorsRecord.focusedSupportingTextColor : color31, (i & Integer.MIN_VALUE) != 0 ? textFieldColorsRecord.unfocusedSupportingTextColor : color32, (i2 & 1) != 0 ? textFieldColorsRecord.disabledSupportingTextColor : color33, (i2 & 2) != 0 ? textFieldColorsRecord.errorSupportingTextColor : color34, (i2 & 4) != 0 ? textFieldColorsRecord.focusedPrefixColor : color35, (i2 & 8) != 0 ? textFieldColorsRecord.unfocusedPrefixColor : color36, (i2 & 16) != 0 ? textFieldColorsRecord.disabledPrefixColor : color37, (i2 & 32) != 0 ? textFieldColorsRecord.errorPrefixColor : color38, (i2 & 64) != 0 ? textFieldColorsRecord.focusedSuffixColor : color39, (i2 & 128) != 0 ? textFieldColorsRecord.unfocusedSuffixColor : color40, (i2 & 256) != 0 ? textFieldColorsRecord.disabledSuffixColor : color41, (i2 & 512) != 0 ? textFieldColorsRecord.errorSuffixColor : color42);
    }

    @Field
    public static /* synthetic */ void getCursorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledIndicatorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledLabelColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledPlaceholderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledPrefixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSuffixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledSupportingTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getDisabledTrailingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorCursorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorIndicatorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorLabelColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorPlaceholderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorPrefixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorSuffixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorSupportingTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getErrorTrailingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedIndicatorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedLabelColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedPlaceholderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedPrefixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedSuffixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedSupportingTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getFocusedTrailingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedContainerColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedIndicatorColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedLabelColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedLeadingIconColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedPlaceholderColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedPrefixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedSuffixColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedSupportingTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedTextColor$annotations() {
    }

    @Field
    public static /* synthetic */ void getUnfocusedTrailingIconColor$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Color getFocusedTextColor() {
        return this.focusedTextColor;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final Color getErrorCursorColor() {
        return this.errorCursorColor;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final Color getFocusedIndicatorColor() {
        return this.focusedIndicatorColor;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Color getUnfocusedIndicatorColor() {
        return this.unfocusedIndicatorColor;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final Color getDisabledIndicatorColor() {
        return this.disabledIndicatorColor;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final Color getErrorIndicatorColor() {
        return this.errorIndicatorColor;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final Color getFocusedLeadingIconColor() {
        return this.focusedLeadingIconColor;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final Color getUnfocusedLeadingIconColor() {
        return this.unfocusedLeadingIconColor;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final Color getDisabledLeadingIconColor() {
        return this.disabledLeadingIconColor;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final Color getErrorLeadingIconColor() {
        return this.errorLeadingIconColor;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final Color getFocusedTrailingIconColor() {
        return this.focusedTrailingIconColor;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final Color getUnfocusedTextColor() {
        return this.unfocusedTextColor;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final Color getUnfocusedTrailingIconColor() {
        return this.unfocusedTrailingIconColor;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final Color getDisabledTrailingIconColor() {
        return this.disabledTrailingIconColor;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final Color getErrorTrailingIconColor() {
        return this.errorTrailingIconColor;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final Color getFocusedLabelColor() {
        return this.focusedLabelColor;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final Color getUnfocusedLabelColor() {
        return this.unfocusedLabelColor;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final Color getDisabledLabelColor() {
        return this.disabledLabelColor;
    }

    /* JADX INFO: renamed from: component26, reason: from getter */
    public final Color getErrorLabelColor() {
        return this.errorLabelColor;
    }

    /* JADX INFO: renamed from: component27, reason: from getter */
    public final Color getFocusedPlaceholderColor() {
        return this.focusedPlaceholderColor;
    }

    /* JADX INFO: renamed from: component28, reason: from getter */
    public final Color getUnfocusedPlaceholderColor() {
        return this.unfocusedPlaceholderColor;
    }

    /* JADX INFO: renamed from: component29, reason: from getter */
    public final Color getDisabledPlaceholderColor() {
        return this.disabledPlaceholderColor;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Color getDisabledTextColor() {
        return this.disabledTextColor;
    }

    /* JADX INFO: renamed from: component30, reason: from getter */
    public final Color getErrorPlaceholderColor() {
        return this.errorPlaceholderColor;
    }

    /* JADX INFO: renamed from: component31, reason: from getter */
    public final Color getFocusedSupportingTextColor() {
        return this.focusedSupportingTextColor;
    }

    /* JADX INFO: renamed from: component32, reason: from getter */
    public final Color getUnfocusedSupportingTextColor() {
        return this.unfocusedSupportingTextColor;
    }

    /* JADX INFO: renamed from: component33, reason: from getter */
    public final Color getDisabledSupportingTextColor() {
        return this.disabledSupportingTextColor;
    }

    /* JADX INFO: renamed from: component34, reason: from getter */
    public final Color getErrorSupportingTextColor() {
        return this.errorSupportingTextColor;
    }

    /* JADX INFO: renamed from: component35, reason: from getter */
    public final Color getFocusedPrefixColor() {
        return this.focusedPrefixColor;
    }

    /* JADX INFO: renamed from: component36, reason: from getter */
    public final Color getUnfocusedPrefixColor() {
        return this.unfocusedPrefixColor;
    }

    /* JADX INFO: renamed from: component37, reason: from getter */
    public final Color getDisabledPrefixColor() {
        return this.disabledPrefixColor;
    }

    /* JADX INFO: renamed from: component38, reason: from getter */
    public final Color getErrorPrefixColor() {
        return this.errorPrefixColor;
    }

    /* JADX INFO: renamed from: component39, reason: from getter */
    public final Color getFocusedSuffixColor() {
        return this.focusedSuffixColor;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Color getErrorTextColor() {
        return this.errorTextColor;
    }

    /* JADX INFO: renamed from: component40, reason: from getter */
    public final Color getUnfocusedSuffixColor() {
        return this.unfocusedSuffixColor;
    }

    /* JADX INFO: renamed from: component41, reason: from getter */
    public final Color getDisabledSuffixColor() {
        return this.disabledSuffixColor;
    }

    /* JADX INFO: renamed from: component42, reason: from getter */
    public final Color getErrorSuffixColor() {
        return this.errorSuffixColor;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final Color getFocusedContainerColor() {
        return this.focusedContainerColor;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final Color getUnfocusedContainerColor() {
        return this.unfocusedContainerColor;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final Color getDisabledContainerColor() {
        return this.disabledContainerColor;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final Color getErrorContainerColor() {
        return this.errorContainerColor;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final Color getCursorColor() {
        return this.cursorColor;
    }

    public final TextFieldColorsRecord copy(Color focusedTextColor, Color unfocusedTextColor, Color disabledTextColor, Color errorTextColor, Color focusedContainerColor, Color unfocusedContainerColor, Color disabledContainerColor, Color errorContainerColor, Color cursorColor, Color errorCursorColor, Color focusedIndicatorColor, Color unfocusedIndicatorColor, Color disabledIndicatorColor, Color errorIndicatorColor, Color focusedLeadingIconColor, Color unfocusedLeadingIconColor, Color disabledLeadingIconColor, Color errorLeadingIconColor, Color focusedTrailingIconColor, Color unfocusedTrailingIconColor, Color disabledTrailingIconColor, Color errorTrailingIconColor, Color focusedLabelColor, Color unfocusedLabelColor, Color disabledLabelColor, Color errorLabelColor, Color focusedPlaceholderColor, Color unfocusedPlaceholderColor, Color disabledPlaceholderColor, Color errorPlaceholderColor, Color focusedSupportingTextColor, Color unfocusedSupportingTextColor, Color disabledSupportingTextColor, Color errorSupportingTextColor, Color focusedPrefixColor, Color unfocusedPrefixColor, Color disabledPrefixColor, Color errorPrefixColor, Color focusedSuffixColor, Color unfocusedSuffixColor, Color disabledSuffixColor, Color errorSuffixColor) {
        return new TextFieldColorsRecord(focusedTextColor, unfocusedTextColor, disabledTextColor, errorTextColor, focusedContainerColor, unfocusedContainerColor, disabledContainerColor, errorContainerColor, cursorColor, errorCursorColor, focusedIndicatorColor, unfocusedIndicatorColor, disabledIndicatorColor, errorIndicatorColor, focusedLeadingIconColor, unfocusedLeadingIconColor, disabledLeadingIconColor, errorLeadingIconColor, focusedTrailingIconColor, unfocusedTrailingIconColor, disabledTrailingIconColor, errorTrailingIconColor, focusedLabelColor, unfocusedLabelColor, disabledLabelColor, errorLabelColor, focusedPlaceholderColor, unfocusedPlaceholderColor, disabledPlaceholderColor, errorPlaceholderColor, focusedSupportingTextColor, unfocusedSupportingTextColor, disabledSupportingTextColor, errorSupportingTextColor, focusedPrefixColor, unfocusedPrefixColor, disabledPrefixColor, errorPrefixColor, focusedSuffixColor, unfocusedSuffixColor, disabledSuffixColor, errorSuffixColor);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof TextFieldColorsRecord)) {
            return false;
        }
        TextFieldColorsRecord textFieldColorsRecord = (TextFieldColorsRecord) other;
        return Intrinsics.areEqual(this.focusedTextColor, textFieldColorsRecord.focusedTextColor) && Intrinsics.areEqual(this.unfocusedTextColor, textFieldColorsRecord.unfocusedTextColor) && Intrinsics.areEqual(this.disabledTextColor, textFieldColorsRecord.disabledTextColor) && Intrinsics.areEqual(this.errorTextColor, textFieldColorsRecord.errorTextColor) && Intrinsics.areEqual(this.focusedContainerColor, textFieldColorsRecord.focusedContainerColor) && Intrinsics.areEqual(this.unfocusedContainerColor, textFieldColorsRecord.unfocusedContainerColor) && Intrinsics.areEqual(this.disabledContainerColor, textFieldColorsRecord.disabledContainerColor) && Intrinsics.areEqual(this.errorContainerColor, textFieldColorsRecord.errorContainerColor) && Intrinsics.areEqual(this.cursorColor, textFieldColorsRecord.cursorColor) && Intrinsics.areEqual(this.errorCursorColor, textFieldColorsRecord.errorCursorColor) && Intrinsics.areEqual(this.focusedIndicatorColor, textFieldColorsRecord.focusedIndicatorColor) && Intrinsics.areEqual(this.unfocusedIndicatorColor, textFieldColorsRecord.unfocusedIndicatorColor) && Intrinsics.areEqual(this.disabledIndicatorColor, textFieldColorsRecord.disabledIndicatorColor) && Intrinsics.areEqual(this.errorIndicatorColor, textFieldColorsRecord.errorIndicatorColor) && Intrinsics.areEqual(this.focusedLeadingIconColor, textFieldColorsRecord.focusedLeadingIconColor) && Intrinsics.areEqual(this.unfocusedLeadingIconColor, textFieldColorsRecord.unfocusedLeadingIconColor) && Intrinsics.areEqual(this.disabledLeadingIconColor, textFieldColorsRecord.disabledLeadingIconColor) && Intrinsics.areEqual(this.errorLeadingIconColor, textFieldColorsRecord.errorLeadingIconColor) && Intrinsics.areEqual(this.focusedTrailingIconColor, textFieldColorsRecord.focusedTrailingIconColor) && Intrinsics.areEqual(this.unfocusedTrailingIconColor, textFieldColorsRecord.unfocusedTrailingIconColor) && Intrinsics.areEqual(this.disabledTrailingIconColor, textFieldColorsRecord.disabledTrailingIconColor) && Intrinsics.areEqual(this.errorTrailingIconColor, textFieldColorsRecord.errorTrailingIconColor) && Intrinsics.areEqual(this.focusedLabelColor, textFieldColorsRecord.focusedLabelColor) && Intrinsics.areEqual(this.unfocusedLabelColor, textFieldColorsRecord.unfocusedLabelColor) && Intrinsics.areEqual(this.disabledLabelColor, textFieldColorsRecord.disabledLabelColor) && Intrinsics.areEqual(this.errorLabelColor, textFieldColorsRecord.errorLabelColor) && Intrinsics.areEqual(this.focusedPlaceholderColor, textFieldColorsRecord.focusedPlaceholderColor) && Intrinsics.areEqual(this.unfocusedPlaceholderColor, textFieldColorsRecord.unfocusedPlaceholderColor) && Intrinsics.areEqual(this.disabledPlaceholderColor, textFieldColorsRecord.disabledPlaceholderColor) && Intrinsics.areEqual(this.errorPlaceholderColor, textFieldColorsRecord.errorPlaceholderColor) && Intrinsics.areEqual(this.focusedSupportingTextColor, textFieldColorsRecord.focusedSupportingTextColor) && Intrinsics.areEqual(this.unfocusedSupportingTextColor, textFieldColorsRecord.unfocusedSupportingTextColor) && Intrinsics.areEqual(this.disabledSupportingTextColor, textFieldColorsRecord.disabledSupportingTextColor) && Intrinsics.areEqual(this.errorSupportingTextColor, textFieldColorsRecord.errorSupportingTextColor) && Intrinsics.areEqual(this.focusedPrefixColor, textFieldColorsRecord.focusedPrefixColor) && Intrinsics.areEqual(this.unfocusedPrefixColor, textFieldColorsRecord.unfocusedPrefixColor) && Intrinsics.areEqual(this.disabledPrefixColor, textFieldColorsRecord.disabledPrefixColor) && Intrinsics.areEqual(this.errorPrefixColor, textFieldColorsRecord.errorPrefixColor) && Intrinsics.areEqual(this.focusedSuffixColor, textFieldColorsRecord.focusedSuffixColor) && Intrinsics.areEqual(this.unfocusedSuffixColor, textFieldColorsRecord.unfocusedSuffixColor) && Intrinsics.areEqual(this.disabledSuffixColor, textFieldColorsRecord.disabledSuffixColor) && Intrinsics.areEqual(this.errorSuffixColor, textFieldColorsRecord.errorSuffixColor);
    }

    public int hashCode() {
        Color color = this.focusedTextColor;
        int iHashCode = (color == null ? 0 : color.hashCode()) * 31;
        Color color2 = this.unfocusedTextColor;
        int iHashCode2 = (iHashCode + (color2 == null ? 0 : color2.hashCode())) * 31;
        Color color3 = this.disabledTextColor;
        int iHashCode3 = (iHashCode2 + (color3 == null ? 0 : color3.hashCode())) * 31;
        Color color4 = this.errorTextColor;
        int iHashCode4 = (iHashCode3 + (color4 == null ? 0 : color4.hashCode())) * 31;
        Color color5 = this.focusedContainerColor;
        int iHashCode5 = (iHashCode4 + (color5 == null ? 0 : color5.hashCode())) * 31;
        Color color6 = this.unfocusedContainerColor;
        int iHashCode6 = (iHashCode5 + (color6 == null ? 0 : color6.hashCode())) * 31;
        Color color7 = this.disabledContainerColor;
        int iHashCode7 = (iHashCode6 + (color7 == null ? 0 : color7.hashCode())) * 31;
        Color color8 = this.errorContainerColor;
        int iHashCode8 = (iHashCode7 + (color8 == null ? 0 : color8.hashCode())) * 31;
        Color color9 = this.cursorColor;
        int iHashCode9 = (iHashCode8 + (color9 == null ? 0 : color9.hashCode())) * 31;
        Color color10 = this.errorCursorColor;
        int iHashCode10 = (iHashCode9 + (color10 == null ? 0 : color10.hashCode())) * 31;
        Color color11 = this.focusedIndicatorColor;
        int iHashCode11 = (iHashCode10 + (color11 == null ? 0 : color11.hashCode())) * 31;
        Color color12 = this.unfocusedIndicatorColor;
        int iHashCode12 = (iHashCode11 + (color12 == null ? 0 : color12.hashCode())) * 31;
        Color color13 = this.disabledIndicatorColor;
        int iHashCode13 = (iHashCode12 + (color13 == null ? 0 : color13.hashCode())) * 31;
        Color color14 = this.errorIndicatorColor;
        int iHashCode14 = (iHashCode13 + (color14 == null ? 0 : color14.hashCode())) * 31;
        Color color15 = this.focusedLeadingIconColor;
        int iHashCode15 = (iHashCode14 + (color15 == null ? 0 : color15.hashCode())) * 31;
        Color color16 = this.unfocusedLeadingIconColor;
        int iHashCode16 = (iHashCode15 + (color16 == null ? 0 : color16.hashCode())) * 31;
        Color color17 = this.disabledLeadingIconColor;
        int iHashCode17 = (iHashCode16 + (color17 == null ? 0 : color17.hashCode())) * 31;
        Color color18 = this.errorLeadingIconColor;
        int iHashCode18 = (iHashCode17 + (color18 == null ? 0 : color18.hashCode())) * 31;
        Color color19 = this.focusedTrailingIconColor;
        int iHashCode19 = (iHashCode18 + (color19 == null ? 0 : color19.hashCode())) * 31;
        Color color20 = this.unfocusedTrailingIconColor;
        int iHashCode20 = (iHashCode19 + (color20 == null ? 0 : color20.hashCode())) * 31;
        Color color21 = this.disabledTrailingIconColor;
        int iHashCode21 = (iHashCode20 + (color21 == null ? 0 : color21.hashCode())) * 31;
        Color color22 = this.errorTrailingIconColor;
        int iHashCode22 = (iHashCode21 + (color22 == null ? 0 : color22.hashCode())) * 31;
        Color color23 = this.focusedLabelColor;
        int iHashCode23 = (iHashCode22 + (color23 == null ? 0 : color23.hashCode())) * 31;
        Color color24 = this.unfocusedLabelColor;
        int iHashCode24 = (iHashCode23 + (color24 == null ? 0 : color24.hashCode())) * 31;
        Color color25 = this.disabledLabelColor;
        int iHashCode25 = (iHashCode24 + (color25 == null ? 0 : color25.hashCode())) * 31;
        Color color26 = this.errorLabelColor;
        int iHashCode26 = (iHashCode25 + (color26 == null ? 0 : color26.hashCode())) * 31;
        Color color27 = this.focusedPlaceholderColor;
        int iHashCode27 = (iHashCode26 + (color27 == null ? 0 : color27.hashCode())) * 31;
        Color color28 = this.unfocusedPlaceholderColor;
        int iHashCode28 = (iHashCode27 + (color28 == null ? 0 : color28.hashCode())) * 31;
        Color color29 = this.disabledPlaceholderColor;
        int iHashCode29 = (iHashCode28 + (color29 == null ? 0 : color29.hashCode())) * 31;
        Color color30 = this.errorPlaceholderColor;
        int iHashCode30 = (iHashCode29 + (color30 == null ? 0 : color30.hashCode())) * 31;
        Color color31 = this.focusedSupportingTextColor;
        int iHashCode31 = (iHashCode30 + (color31 == null ? 0 : color31.hashCode())) * 31;
        Color color32 = this.unfocusedSupportingTextColor;
        int iHashCode32 = (iHashCode31 + (color32 == null ? 0 : color32.hashCode())) * 31;
        Color color33 = this.disabledSupportingTextColor;
        int iHashCode33 = (iHashCode32 + (color33 == null ? 0 : color33.hashCode())) * 31;
        Color color34 = this.errorSupportingTextColor;
        int iHashCode34 = (iHashCode33 + (color34 == null ? 0 : color34.hashCode())) * 31;
        Color color35 = this.focusedPrefixColor;
        int iHashCode35 = (iHashCode34 + (color35 == null ? 0 : color35.hashCode())) * 31;
        Color color36 = this.unfocusedPrefixColor;
        int iHashCode36 = (iHashCode35 + (color36 == null ? 0 : color36.hashCode())) * 31;
        Color color37 = this.disabledPrefixColor;
        int iHashCode37 = (iHashCode36 + (color37 == null ? 0 : color37.hashCode())) * 31;
        Color color38 = this.errorPrefixColor;
        int iHashCode38 = (iHashCode37 + (color38 == null ? 0 : color38.hashCode())) * 31;
        Color color39 = this.focusedSuffixColor;
        int iHashCode39 = (iHashCode38 + (color39 == null ? 0 : color39.hashCode())) * 31;
        Color color40 = this.unfocusedSuffixColor;
        int iHashCode40 = (iHashCode39 + (color40 == null ? 0 : color40.hashCode())) * 31;
        Color color41 = this.disabledSuffixColor;
        int iHashCode41 = (iHashCode40 + (color41 == null ? 0 : color41.hashCode())) * 31;
        Color color42 = this.errorSuffixColor;
        return iHashCode41 + (color42 != null ? color42.hashCode() : 0);
    }

    public String toString() {
        return "TextFieldColorsRecord(focusedTextColor=" + this.focusedTextColor + ", unfocusedTextColor=" + this.unfocusedTextColor + ", disabledTextColor=" + this.disabledTextColor + ", errorTextColor=" + this.errorTextColor + ", focusedContainerColor=" + this.focusedContainerColor + ", unfocusedContainerColor=" + this.unfocusedContainerColor + ", disabledContainerColor=" + this.disabledContainerColor + ", errorContainerColor=" + this.errorContainerColor + ", cursorColor=" + this.cursorColor + ", errorCursorColor=" + this.errorCursorColor + ", focusedIndicatorColor=" + this.focusedIndicatorColor + ", unfocusedIndicatorColor=" + this.unfocusedIndicatorColor + ", disabledIndicatorColor=" + this.disabledIndicatorColor + ", errorIndicatorColor=" + this.errorIndicatorColor + ", focusedLeadingIconColor=" + this.focusedLeadingIconColor + ", unfocusedLeadingIconColor=" + this.unfocusedLeadingIconColor + ", disabledLeadingIconColor=" + this.disabledLeadingIconColor + ", errorLeadingIconColor=" + this.errorLeadingIconColor + ", focusedTrailingIconColor=" + this.focusedTrailingIconColor + ", unfocusedTrailingIconColor=" + this.unfocusedTrailingIconColor + ", disabledTrailingIconColor=" + this.disabledTrailingIconColor + ", errorTrailingIconColor=" + this.errorTrailingIconColor + ", focusedLabelColor=" + this.focusedLabelColor + ", unfocusedLabelColor=" + this.unfocusedLabelColor + ", disabledLabelColor=" + this.disabledLabelColor + ", errorLabelColor=" + this.errorLabelColor + ", focusedPlaceholderColor=" + this.focusedPlaceholderColor + ", unfocusedPlaceholderColor=" + this.unfocusedPlaceholderColor + ", disabledPlaceholderColor=" + this.disabledPlaceholderColor + ", errorPlaceholderColor=" + this.errorPlaceholderColor + ", focusedSupportingTextColor=" + this.focusedSupportingTextColor + ", unfocusedSupportingTextColor=" + this.unfocusedSupportingTextColor + ", disabledSupportingTextColor=" + this.disabledSupportingTextColor + ", errorSupportingTextColor=" + this.errorSupportingTextColor + ", focusedPrefixColor=" + this.focusedPrefixColor + ", unfocusedPrefixColor=" + this.unfocusedPrefixColor + ", disabledPrefixColor=" + this.disabledPrefixColor + ", errorPrefixColor=" + this.errorPrefixColor + ", focusedSuffixColor=" + this.focusedSuffixColor + ", unfocusedSuffixColor=" + this.unfocusedSuffixColor + ", disabledSuffixColor=" + this.disabledSuffixColor + ", errorSuffixColor=" + this.errorSuffixColor + ")";
    }

    public TextFieldColorsRecord(Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, Color color17, Color color18, Color color19, Color color20, Color color21, Color color22, Color color23, Color color24, Color color25, Color color26, Color color27, Color color28, Color color29, Color color30, Color color31, Color color32, Color color33, Color color34, Color color35, Color color36, Color color37, Color color38, Color color39, Color color40, Color color41, Color color42) {
        this.focusedTextColor = color;
        this.unfocusedTextColor = color2;
        this.disabledTextColor = color3;
        this.errorTextColor = color4;
        this.focusedContainerColor = color5;
        this.unfocusedContainerColor = color6;
        this.disabledContainerColor = color7;
        this.errorContainerColor = color8;
        this.cursorColor = color9;
        this.errorCursorColor = color10;
        this.focusedIndicatorColor = color11;
        this.unfocusedIndicatorColor = color12;
        this.disabledIndicatorColor = color13;
        this.errorIndicatorColor = color14;
        this.focusedLeadingIconColor = color15;
        this.unfocusedLeadingIconColor = color16;
        this.disabledLeadingIconColor = color17;
        this.errorLeadingIconColor = color18;
        this.focusedTrailingIconColor = color19;
        this.unfocusedTrailingIconColor = color20;
        this.disabledTrailingIconColor = color21;
        this.errorTrailingIconColor = color22;
        this.focusedLabelColor = color23;
        this.unfocusedLabelColor = color24;
        this.disabledLabelColor = color25;
        this.errorLabelColor = color26;
        this.focusedPlaceholderColor = color27;
        this.unfocusedPlaceholderColor = color28;
        this.disabledPlaceholderColor = color29;
        this.errorPlaceholderColor = color30;
        this.focusedSupportingTextColor = color31;
        this.unfocusedSupportingTextColor = color32;
        this.disabledSupportingTextColor = color33;
        this.errorSupportingTextColor = color34;
        this.focusedPrefixColor = color35;
        this.unfocusedPrefixColor = color36;
        this.disabledPrefixColor = color37;
        this.errorPrefixColor = color38;
        this.focusedSuffixColor = color39;
        this.unfocusedSuffixColor = color40;
        this.disabledSuffixColor = color41;
        this.errorSuffixColor = color42;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ TextFieldColorsRecord(Color color, Color color2, Color color3, Color color4, Color color5, Color color6, Color color7, Color color8, Color color9, Color color10, Color color11, Color color12, Color color13, Color color14, Color color15, Color color16, Color color17, Color color18, Color color19, Color color20, Color color21, Color color22, Color color23, Color color24, Color color25, Color color26, Color color27, Color color28, Color color29, Color color30, Color color31, Color color32, Color color33, Color color34, Color color35, Color color36, Color color37, Color color38, Color color39, Color color40, Color color41, Color color42, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        Color color43 = (i & 1) != 0 ? null : color;
        Color color44 = (i & 2) != 0 ? null : color2;
        Color color45 = (i & 4) != 0 ? null : color3;
        Color color46 = (i & 8) != 0 ? null : color4;
        Color color47 = (i & 16) != 0 ? null : color5;
        Color color48 = (i & 32) != 0 ? null : color6;
        Color color49 = (i & 64) != 0 ? null : color7;
        Color color50 = (i & 128) != 0 ? null : color8;
        Color color51 = (i & 256) != 0 ? null : color9;
        Color color52 = (i & 512) != 0 ? null : color10;
        Color color53 = (i & 1024) != 0 ? null : color11;
        Color color54 = (i & 2048) != 0 ? null : color12;
        Color color55 = (i & 4096) != 0 ? null : color13;
        Color color56 = (i & 8192) != 0 ? null : color14;
        Color color57 = color43;
        Color color58 = (i & 16384) != 0 ? null : color15;
        Color color59 = (i & 32768) != 0 ? null : color16;
        Color color60 = (i & 65536) != 0 ? null : color17;
        Color color61 = (i & 131072) != 0 ? null : color18;
        Color color62 = (i & 262144) != 0 ? null : color19;
        Color color63 = (i & 524288) != 0 ? null : color20;
        Color color64 = (i & 1048576) != 0 ? null : color21;
        Color color65 = (i & 2097152) != 0 ? null : color22;
        Color color66 = (i & 4194304) != 0 ? null : color23;
        Color color67 = (i & 8388608) != 0 ? null : color24;
        Color color68 = (i & 16777216) != 0 ? null : color25;
        Color color69 = (i & 33554432) != 0 ? null : color26;
        Color color70 = (i & 67108864) != 0 ? null : color27;
        Color color71 = (i & C.BUFFER_FLAG_FIRST_SAMPLE) != 0 ? null : color28;
        Color color72 = (i & 268435456) != 0 ? null : color29;
        Color color73 = (i & C.BUFFER_FLAG_LAST_SAMPLE) != 0 ? null : color30;
        Color color74 = (i & 1073741824) != 0 ? null : color31;
        Color color75 = (i & Integer.MIN_VALUE) != 0 ? null : color32;
        Color color76 = color44;
        Color color77 = color45;
        Color color78 = color46;
        Color color79 = color47;
        Color color80 = color48;
        Color color81 = color49;
        Color color82 = color50;
        Color color83 = color51;
        Color color84 = color52;
        Color color85 = color53;
        Color color86 = color54;
        Color color87 = color55;
        this(color57, color76, color77, color78, color79, color80, color81, color82, color83, color84, color85, color86, color87, color56, color58, color59, color60, color61, color62, color63, color64, color65, color66, color67, color68, color69, color70, color71, color72, color73, color74, color75, (i2 & 1) != 0 ? null : color33, (i2 & 2) != 0 ? null : color34, (i2 & 4) != 0 ? null : color35, (i2 & 8) != 0 ? null : color36, (i2 & 16) != 0 ? null : color37, (i2 & 32) != 0 ? null : color38, (i2 & 64) != 0 ? null : color39, (i2 & 128) != 0 ? null : color40, (i2 & 256) != 0 ? null : color41, (i2 & 512) != 0 ? null : color42);
    }

    public final Color getFocusedTextColor() {
        return this.focusedTextColor;
    }

    public final Color getUnfocusedTextColor() {
        return this.unfocusedTextColor;
    }

    public final Color getDisabledTextColor() {
        return this.disabledTextColor;
    }

    public final Color getErrorTextColor() {
        return this.errorTextColor;
    }

    public final Color getFocusedContainerColor() {
        return this.focusedContainerColor;
    }

    public final Color getUnfocusedContainerColor() {
        return this.unfocusedContainerColor;
    }

    public final Color getDisabledContainerColor() {
        return this.disabledContainerColor;
    }

    public final Color getErrorContainerColor() {
        return this.errorContainerColor;
    }

    public final Color getCursorColor() {
        return this.cursorColor;
    }

    public final Color getErrorCursorColor() {
        return this.errorCursorColor;
    }

    public final Color getFocusedIndicatorColor() {
        return this.focusedIndicatorColor;
    }

    public final Color getUnfocusedIndicatorColor() {
        return this.unfocusedIndicatorColor;
    }

    public final Color getDisabledIndicatorColor() {
        return this.disabledIndicatorColor;
    }

    public final Color getErrorIndicatorColor() {
        return this.errorIndicatorColor;
    }

    public final Color getFocusedLeadingIconColor() {
        return this.focusedLeadingIconColor;
    }

    public final Color getUnfocusedLeadingIconColor() {
        return this.unfocusedLeadingIconColor;
    }

    public final Color getDisabledLeadingIconColor() {
        return this.disabledLeadingIconColor;
    }

    public final Color getErrorLeadingIconColor() {
        return this.errorLeadingIconColor;
    }

    public final Color getFocusedTrailingIconColor() {
        return this.focusedTrailingIconColor;
    }

    public final Color getUnfocusedTrailingIconColor() {
        return this.unfocusedTrailingIconColor;
    }

    public final Color getDisabledTrailingIconColor() {
        return this.disabledTrailingIconColor;
    }

    public final Color getErrorTrailingIconColor() {
        return this.errorTrailingIconColor;
    }

    public final Color getFocusedLabelColor() {
        return this.focusedLabelColor;
    }

    public final Color getUnfocusedLabelColor() {
        return this.unfocusedLabelColor;
    }

    public final Color getDisabledLabelColor() {
        return this.disabledLabelColor;
    }

    public final Color getErrorLabelColor() {
        return this.errorLabelColor;
    }

    public final Color getFocusedPlaceholderColor() {
        return this.focusedPlaceholderColor;
    }

    public final Color getUnfocusedPlaceholderColor() {
        return this.unfocusedPlaceholderColor;
    }

    public final Color getDisabledPlaceholderColor() {
        return this.disabledPlaceholderColor;
    }

    public final Color getErrorPlaceholderColor() {
        return this.errorPlaceholderColor;
    }

    public final Color getFocusedSupportingTextColor() {
        return this.focusedSupportingTextColor;
    }

    public final Color getUnfocusedSupportingTextColor() {
        return this.unfocusedSupportingTextColor;
    }

    public final Color getDisabledSupportingTextColor() {
        return this.disabledSupportingTextColor;
    }

    public final Color getErrorSupportingTextColor() {
        return this.errorSupportingTextColor;
    }

    public final Color getFocusedPrefixColor() {
        return this.focusedPrefixColor;
    }

    public final Color getUnfocusedPrefixColor() {
        return this.unfocusedPrefixColor;
    }

    public final Color getDisabledPrefixColor() {
        return this.disabledPrefixColor;
    }

    public final Color getErrorPrefixColor() {
        return this.errorPrefixColor;
    }

    public final Color getFocusedSuffixColor() {
        return this.focusedSuffixColor;
    }

    public final Color getUnfocusedSuffixColor() {
        return this.unfocusedSuffixColor;
    }

    public final Color getDisabledSuffixColor() {
        return this.disabledSuffixColor;
    }

    public final Color getErrorSuffixColor() {
        return this.errorSuffixColor;
    }
}
