package com.superwall.sdk.debug;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.react.uimanager.ViewProps;
import com.superwall.sdk.R;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SWConsoleTableViewAdapter.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010&\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B)\u0012\u0018\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\"\u0010\u000b\u001a\u00020\f2\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\bH\u0016J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\bH\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R \u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/superwall/sdk/debug/TableViewAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/superwall/sdk/debug/TableViewAdapter$ViewHolder;", "data", "", "", "", "pickerRow", "", "<init>", "(Ljava/util/List;I)V", "updateData", "", "newData", "", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "onBindViewHolder", "holder", ViewProps.POSITION, "getItemCount", "ViewHolder", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TableViewAdapter extends RecyclerView.Adapter<ViewHolder> {
    private List<Map.Entry<String, String>> data;
    private int pickerRow;

    public TableViewAdapter(List<Map.Entry<String, String>> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.data = data;
        this.pickerRow = i;
    }

    public final void updateData(Map<String, String> newData, int pickerRow) {
        Intrinsics.checkNotNullParameter(newData, "newData");
        this.pickerRow = pickerRow;
        this.data.clear();
        Iterator<Map.Entry<String, String>> it = newData.entrySet().iterator();
        while (it.hasNext()) {
            this.data.add(it.next());
        }
        CollectionsKt.sortWith(this.data, new Comparator() { // from class: com.superwall.sdk.debug.TableViewAdapter$updateData$$inlined$compareBy$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((Comparable) ((Map.Entry) t).getKey(), (Comparable) ((Map.Entry) t2).getKey());
            }
        });
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(parent.getContext()).inflate(R.layout.custom_list_item, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new ViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        String str;
        Intrinsics.checkNotNullParameter(holder, "holder");
        List listListOf = CollectionsKt.listOf((Object[]) new String[]{"primary", "secondary", "tertiary"});
        String str2 = this.pickerRow < listListOf.size() ? (String) listListOf.get(this.pickerRow) : null;
        Map.Entry<String, String> entry = this.data.get(position);
        String key = entry.getKey();
        holder.getText1().setText(entry.getValue());
        if (str2 != null && (str = str2 + "." + key) != null) {
            key = str;
        }
        holder.getText2().setText("{{ " + key + " }}");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.data.size();
    }

    /* JADX INFO: compiled from: SWConsoleTableViewAdapter.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000b¨\u0006\u000f"}, d2 = {"Lcom/superwall/sdk/debug/TableViewAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "view", "Landroid/view/View;", "<init>", "(Landroid/view/View;)V", "text1", "Landroid/widget/TextView;", "getText1", "()Landroid/widget/TextView;", "setText1", "(Landroid/widget/TextView;)V", "text2", "getText2", "setText2", "superwall_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private TextView text1;
        private TextView text2;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(View view) {
            super(view);
            Intrinsics.checkNotNullParameter(view, "view");
            View viewFindViewById = view.findViewById(R.id.text1);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
            this.text1 = (TextView) viewFindViewById;
            View viewFindViewById2 = view.findViewById(R.id.text2);
            Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(...)");
            this.text2 = (TextView) viewFindViewById2;
        }

        public final TextView getText1() {
            return this.text1;
        }

        public final void setText1(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.text1 = textView;
        }

        public final TextView getText2() {
            return this.text2;
        }

        public final void setText2(TextView textView) {
            Intrinsics.checkNotNullParameter(textView, "<set-?>");
            this.text2 = textView;
        }
    }
}
