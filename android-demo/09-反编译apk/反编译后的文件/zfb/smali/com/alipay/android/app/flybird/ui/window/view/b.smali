.class final Lcom/alipay/android/app/flybird/ui/window/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/view/b;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/window/view/b;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->a()Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/view/b;->b:Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;->a(Lcom/alipay/android/app/flybird/ui/window/view/FlybirdLocalViewNoPwd;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/BlockEditModeUtil;->b(I)V

    .line 51
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/view/b;->a:Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdLocalViewOperation;->b_()V

    .line 52
    return-void
.end method
