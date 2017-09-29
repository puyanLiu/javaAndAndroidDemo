.class final Lcom/alipay/android/app/ui/quickpay/uielement/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/widget/DragSortListView$DropListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/e;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/e;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/e;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Ljava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/e;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->a(Ljava/lang/Object;I)V

    .line 267
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/e;->a:Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;->a(Lcom/alipay/android/app/ui/quickpay/uielement/UIBlock;)Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/widget/DragListAdapter;->notifyDataSetChanged()V

    .line 268
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a(II)V

    .line 269
    return-void
.end method
